import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/constant/constant.dart';
import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/onBoardingScreens/Splash.dart';
// import 'package:flutter_application_1/onBoardingScreens/Splash.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/dio_consumer.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/core/signUp.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_application_1/pages/welcome.dart';
// import 'package:flutter_application_1/pages/in_body.dart';
// import 'package:flutter_application_1/pages/password.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gemini/flutter_gemini.dart';

import 'exercise_beginner_Drying/Day1_Chest&triceps.dart';
import 'pages/gemini.dart';

void main() {
  Gemini.init(
    apiKey: GEMINI_API_KEY,
  );
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
      home: Splash(),
    );
  }
}
