
// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/home.dart';


import '../constant/constant.dart';

class NutritionProgramSeeAll extends StatelessWidget {
  const NutritionProgramSeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(0xffD0FD3E),
              size: 50,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nutrition Guide See All',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Drying',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/Dietary_drying_1.png',
                width: 382,
                height: 237,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/Dietary_drying_2.png',
                width: 382,
                height: 237,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/Dietary_drying_3.png',
                width: 382,
                height: 237,
              ),
              const Text(
                'Bulking',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/chiken.png',
                width: 382,
                height: 237,
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/pop.png',
                width: 382,
                height: 250,
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Weight loss',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'assets/assets/images/egg.png',
                width: 382,
                height: 237,
              ),
              const Rate_Us(),
              const bottom_tab_bar()
            ],
          ),
        ),
      ),
    );
  }
}
