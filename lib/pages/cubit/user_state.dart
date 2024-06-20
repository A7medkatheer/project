part of 'user_cubit.dart';

abstract class UserState {}

final class UserInitial extends UserState {}

final class SignUpSuccess extends UserState {}

final class InBodySuccess extends UserState {}

final class InBodyLoading extends UserState {}

final class InBodyFailure extends UserState {
  final String errMessage;

  InBodyFailure({required this.errMessage});
}

final class SignUpLoading extends UserState {}

final class SignUpFailure extends UserState {
  final String errMessage;

  SignUpFailure({required this.errMessage});
}

final class SignInSuccess extends UserState {}

final class SignInLoading extends UserState {}

final class SignInFailure extends UserState {
  final String errMessage;

  SignInFailure({required this.errMessage});
}

final class VerifyCodeLoading extends UserState {}

final class VerifyResetCodeLoading extends UserState {}

final class VerifyCodeSuccess extends UserState {}

final class VerifyResetCodeSuccess extends UserState {}

final class VerifyCodeFailure extends UserState {
  final String errMessage;

  VerifyCodeFailure({required this.errMessage});
}

final class VerifyResetCodeFailure extends UserState {
  final String errMessage;

  VerifyResetCodeFailure({required this.errMessage});
}

final class SendCodeSuccess extends UserState {}

final class SendCodeLoading extends UserState {}

final class SendCodeFailure extends UserState {
  final String errMessage;

  SendCodeFailure({required this.errMessage});
}

final class SendForgetPassCodeLoading extends UserState {}

final class SendForgetPassCodeSucess extends UserState {}

final class SendForgetPassCodeFailure extends UserState {
  final String errMessage;

  SendForgetPassCodeFailure({required this.errMessage});
}

final class ResetPasswordSucess extends UserState {}

final class ResetPasswordLoading extends UserState {}

final class ResetPasswordFailure extends UserState {
  final String errMessage;

  ResetPasswordFailure({required this.errMessage});
}

final class PasswordSucess extends UserState {}

final class PasswordLoading extends UserState {}

final class PasswordFailure extends UserState {
  final String errMessage;

  PasswordFailure({required this.errMessage});
}

final class UploadProfilePic extends UserState {}

final class UploadProfilePicLoading extends UserState {}

final class UploadProfilePicSucess extends UserState {}

final class UploadProfilePicFailure extends UserState {
  final String errMessage;

  UploadProfilePicFailure({required this.errMessage});
}

final class GetUserLoading extends UserState {}

final class GetUserSucess extends UserState {}

final class GetUserFailure extends UserState {
  final String errMessage;

  GetUserFailure({required this.errMessage});
}

final class MBodyDataLoading extends UserState {}

final class MBodyDataSucess extends UserState {}

final class MBodyDataFailure extends UserState {
  final String errMessage;

  MBodyDataFailure({required this.errMessage});
}

final class PaymentLoading extends UserState {}

final class PaymentSucess extends UserState {
  final String paymentUrl;

  PaymentSucess({required this.paymentUrl});
}

final class PaymentFailure extends UserState {
  final String errMessage;

  PaymentFailure({required this.errMessage});
}

final class UpdataDataLoading extends UserState {}

final class UpdataDataSucess extends UserState {}

final class UpdataDataFailure extends UserState {
  final String errMessage;

  UpdataDataFailure({required this.errMessage});
}
