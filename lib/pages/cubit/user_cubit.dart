// ignore_for_file: avoid_print

import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/api_consumer.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/core/errors/error_model.dart';
import 'package:flutter_application_1/pages/core/errors/exceptions.dart';
import 'package:flutter_application_1/pages/core/functions/upload_image_to_api.dart';
import 'package:flutter_application_1/pages/core/models/get_mbody_model.dart';
import 'package:flutter_application_1/pages/core/models/paymeny_model.dart';
import 'package:flutter_application_1/pages/core/models/sign_in_model.dart';
import 'package:flutter_application_1/pages/core/models/sign_up_model.dart';
import 'package:flutter_application_1/pages/core/models/user_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  XFile? profilePic;
  final ApiConsumer api;
  @override
  void onChange(Change<UserState> change) {
    super.onChange(change);
    print(change);
  }

  SignInModel? user;
  // UserModel? getData;
  signIn({required String email, required String password}) async {
    try {
      emit(SignInLoading());
      final response = await api.post(
        EndPoint.signIn,
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
        },
      );
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);
      CacheHelper()
          .saveData(key: ApiKey.userId, value: decodedToken[ApiKey.userId]);
      print(decodedToken[ApiKey.userId]);

      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
    }
  }

  uploadProfilePic(XFile image) {
    profilePic = image;
    emit(UploadProfilePic());
  }

  uploadImage({required XFile profilePic}) async {
    try {
      emit(UploadProfilePicLoading());
      final response = await api.post(
        EndPoint.getUserIdUploadimage(
            CacheHelper().getData(key: ApiKey.userId)),
        isFromData: true,
        data: {"profileImage": await uploadImageToAPI(profilePic)},
      );
      print(response);
      emit(UploadProfilePicSucess());
    } on ServerException catch (e) {
      emit(UploadProfilePicFailure(errMessage: e.errModel.errorMessage));
    }
  }

  signUp(
      {required String name,
      required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      emit(SignUpLoading());
      final response = await api.post(
        EndPoint.signUp,
        data: {
          ApiKey.name: name,
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
        },
      );
      emit(SignUpSuccess());
      print(response);
    } on ServerException catch (e) {
      emit(SignUpFailure(errMessage: e.errModel.errorMessage));
    }
  }

  sendCode({required String email}) async {
    try {
      emit(SendCodeLoading());
      final response = await api.post(
        EndPoint.sendCode,
        data: {
          ApiKey.email: email,
        },
      );
      emit(SendCodeSuccess());
      print(response);
    } on ServerException catch (e) {
      emit(SendCodeFailure(errMessage: e.errModel.errorMessage));
    }
  }

  sendForgetPasswordCode({required String email}) async {
    try {
      emit(SendForgetPassCodeLoading());
      final response = await api.post(
        EndPoint.forgotPassword,
        data: {
          ApiKey.email: email,
        },
      );
      emit(SendForgetPassCodeSucess());
      print(response);
    } on ServerException catch (e) {
      emit(SendForgetPassCodeFailure(errMessage: e.errModel.errorMessage));
    }
  }

  verfiyCode({required String code}) async {
    try {
      emit(VerifyCodeLoading());
      final response = await api.post(
        EndPoint.verifyCode,
        data: {
          "resetCode": code,
        },
      );
      user = SignInModel.fromJson(response);
      final decodedToken = JwtDecoder.decode(user!.token);
      CacheHelper().saveData(key: ApiKey.token, value: user!.token);
      CacheHelper()
          .saveData(key: ApiKey.userId, value: decodedToken[ApiKey.userId]);
      emit(VerifyCodeSuccess());
    } on ServerException catch (e) {
      emit(VerifyCodeFailure(errMessage: e.errModel.errorMessage));
    }
  }

  verfiyRestCode({required String code}) async {
    try {
      emit(VerifyResetCodeLoading());
      final response = await api.post(
        "auth/verifyResetCode",
        data: {
          "resetCode": code,
        },
      );
      emit(VerifyResetCodeSuccess());
      print(response);
    } on ServerException catch (e) {
      emit(VerifyResetCodeFailure(errMessage: e.errModel.errorMessage));
    }
  }

  resetPassword(
      {required String email,
      required String password,
      required String confirmPassword}) async {
    try {
      emit(ResetPasswordLoading());
      final response = await api.put(
        "auth/resetPassword",
        data: {
          ApiKey.email: email,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
        },
      );
      emit(ResetPasswordSucess());
      print(response);
    } on ServerException catch (e) {
      emit(ResetPasswordFailure(errMessage: e.errModel.errorMessage));
    }
  }

  changePassword(
      {required String oldPassword,
      required String password,
      required String confirmPassword}) async {
    try {
      emit(PasswordLoading());
      final response = await api.put(
        EndPoint.changePassword(CacheHelper().getData(key: ApiKey.userId)),
        data: {
          "currentPassword": oldPassword,
          ApiKey.password: password,
          ApiKey.confirmPassword: confirmPassword,
        },
      );
      emit(PasswordSucess());
      print(response);
    } on ServerException catch (e) {
      emit(PasswordFailure(errMessage: e.errModel.errorMessage));
    }
  }

  getUser() async {
    try {
      final response = await api.get(
        EndPoint.getUserData(
          CacheHelper().getData(key: ApiKey.userId),
        ),
      );
      final getData = UserModel.fromJson(response);

      CacheHelper().saveData(key: ApiKey.name, value: getData.name);
      CacheHelper().saveData(key: ApiKey.email, value: getData.email);
      CacheHelper().saveData(key: ApiKey.profilePic, value: getData.profilePic);
      CacheHelper().saveData(key: ApiKey.ispayment, value: getData.ispayment);
      CacheHelper().saveData(key: ApiKey.plane, value: getData.plane);

      print("${getData.name} ${getData.email} ${getData.profilePic}");
      emit(GetUserSucess());
    } on ServerException catch (e) {
      emit(GetUserFailure(errMessage: e.errModel.errorMessage));
    }
  }

  inBody({
    required String gender,
    required String userId,
    required String height,
    required String weight,
    required String age,
    String? fat,
    String? muscle,
    String? water,
    String? bmr,
  }) async {
    try {
      emit(InBodyLoading());
      var data = <String, String>{
        "gender": gender,
        "height": height,
        "weight": weight,
        "age": age,
        "userId": userId,
      };

      // Add values to the map only if they are not null and not empty
      if (fat != null && fat.isNotEmpty) {
        data["fat"] = fat;
      }
      if (muscle != null && muscle.isNotEmpty) {
        data["muscle"] = muscle;
      }
      if (water != null && water.isNotEmpty) {
        data["water"] = water;
      }
      if (bmr != null && bmr.isNotEmpty) {
        data["bmr"] = bmr;
      }
      final response = await api.post(
        "mbody",
        data: data,
      );
      final getId = GetIdData.fromJson(response);
      CacheHelper().saveData(key: ApiKey.mBodyId, value: getId.id);
      print(getId.id);

      emit(InBodySuccess());
    } on ServerException catch (e) {
      emit(InBodyFailure(errMessage: e.errModel.errorMessage));
    }
  }

  updataData({
    String? name,
    String? email,
  }) async {
    try {
      emit(UpdataDataLoading());

      // Create a new map
      var data = <String, String>{};

      // Add values to the map only if they are not null and not empty
      if (name != null && name.isNotEmpty) {
        data[ApiKey.name] = name;
      }
      if (email != null && email.isNotEmpty) {
        data[ApiKey.email] = email;
      }

      final response = await api.put(
        EndPoint.getUserData(CacheHelper().getData(key: ApiKey.userId)),
        data: data, // Use the new map as the request body
      );

      emit(UpdataDataSucess());
      print(response);
    } on ServerException catch (e) {
      emit(UpdataDataFailure(errMessage: e.errModel.errorMessage));
    }
  }

  mBodyData() async {
    emit(MBodyDataLoading());
    try {
      final response = await api.get(
        EndPoint.getMbodyId(
          CacheHelper().getData(key: ApiKey.userId),
        ),
      );
      final getData = BodyDataModel.fromJson(response);

      CacheHelper().saveData(key: ApiKey.age, value: getData.age);
      CacheHelper().saveData(key: ApiKey.weight, value: getData.weight);
      CacheHelper().saveData(key: ApiKey.height, value: getData.height);
      CacheHelper().saveData(key: ApiKey.gender, value: getData.gender);
      print("${getData.age} ${getData.weight} ${getData.height}");
      emit(MBodyDataSucess());
    } on ServerException catch (e) {
      emit(MBodyDataFailure(errMessage: e.errModel.errorMessage));
    }
  }

  payment({
    required String price,
    required String plane,
  }) async {
    try {
      emit(PaymentLoading());
      final response = await api.post(
        EndPoint.payment(CacheHelper().getData(key: ApiKey.userId)),
        data: {
          "price": price,
          "plane": plane,
        },
      );
      final getPayment = PaymentModel.fromJson(response);
      print(getPayment.paymentUrl);
      emit(PaymentSucess(paymentUrl: getPayment.paymentUrl));
    } on ServerException catch (e) {
      emit(PaymentFailure(errMessage: e.errModel.errorMessage));
    }
  }
}
