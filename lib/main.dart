import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_application_1/onBoardingScreens/Splash.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/dio_consumer.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/core/signUp.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
// import 'package:flutter_application_1/pages/in_body.dart';
// import 'package:flutter_application_1/pages/password.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// import 'profile/pirvacy_policy.dart';
// import 'profile/profile_page.dart';

// import 'profile/change_password.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  CacheHelper().init();
  runApp(BlocProvider(
    create: (context) => UserCubit(DioConsumer(dio: Dio())),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}
