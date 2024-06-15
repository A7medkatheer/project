

import 'package:flutter_application_1/pages/core/api/end_ponits.dart';

class SignUpModel {
  final String email;
  final String password;

  SignUpModel({required this.email, required this.password});
  factory SignUpModel.fromJson(Map<String, dynamic> jsonData) {
    return SignUpModel(email: jsonData[ApiKey.email],password: jsonData[ApiKey.password]);
  }
}
