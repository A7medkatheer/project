class EndPoint {
  static String baseUrl =
      "https://graduation-project-2q7g.onrender.com/api/v1/";
  static String signIn = "auth/login";
  static String signUp = "auth/signup";
  static String sendCode = "auth/sendcode";
  static String forgotPassword = "auth/forgotPassword";
  static String verifyCode = "auth/verifyemail";
  static String getUserDataEndPoint(id) {
    return "user/$id";
  }
}

class ApiKey {
  static String name = "name";
  static String error = "errors";
  static String email = "email";
  static String password = "password";
  static String confirmPassword = "passwordConfirm";
  static String status = "status";
  static String errorMessage = "msg";
  static String token = "token";
  static String message = "message";
  static String userId = "userId";
  static String phone = "phone";
  static String location = "location";
  static String profilePic = "profilePic";
}
