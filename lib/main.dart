import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drying/drying_levels.dart';
import 'package:flutter_application_1/core/training_programs_see_all.dart';
import 'package:flutter_application_1/core/workout_category.dart';
import 'package:flutter_application_1/guide/armor_guide.dart';
import 'package:flutter_application_1/healthy_recipes/bulking_levels.dart';
import 'package:flutter_application_1/onBoardingScreens/Splash.dart';
// import 'package:flutter_application_1/onBoardingScreens/Splash.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/dio_consumer.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_application_1/pages/gender.dart';
import 'package:flutter_application_1/pages/in_body.dart';
import 'package:flutter_application_1/payment/payment_card.dart';
import 'package:flutter_application_1/payment/payment_resend_code.dart';
import 'package:flutter_application_1/profile/profile_page.dart';
import 'package:flutter_application_1/profile/setting_screen.dart';
// import 'package:flutter_application_1/pages/in_body.dart';
// import 'package:flutter_application_1/pages/password.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/welcome.dart';
import 'payment/plan.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Plan(),
    );
  }
}
