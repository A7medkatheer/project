// ignore_for_file: avoid_print


import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/api_consumer.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/core/errors/exceptions.dart';
import 'package:flutter_application_1/pages/core/models/sign_in_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;

  @override
  void onChange(Change<UserState> change) {
    super.onChange(change);
    print(change);
  }

  SignInModel? user;
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
      emit(SignInSuccess());
    } on ServerException catch (e) {
      emit(SignInFailure(errMessage: e.errModel.errorMessage));
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
      emit(VerifyCodeSuccess());
      print(response);
    } on ServerException catch (e) {
      emit(VerifyCodeFailure(errMessage: e.errModel.errorMessage));
    }
  }
}
