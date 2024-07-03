import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/chat_bot.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/gemini.dart';
import 'package:flutter_application_1/private/equations/examples_of_calculator.dart';
import 'package:flutter_application_1/private/food_bulking/bulking_and_drying_level_2.dart';

import '../Drying/drying_levels.dart';
import '../constant/constant.dart';
import '../healthy_recipes/bulking_levels.dart';
import 'equations/carb_calculator.dart';
import 'equations/stop_watch.dart';
import 'exercises_private.dart';
import 'food_bulking/bulking_and_drying_level_1.dart';

class HomePrivate extends StatelessWidget {
  const HomePrivate({super.key});

  @override
  Widget build(BuildContext context) {
    final index = CacheHelper().getData(key: ApiKey.index) ?? 0;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
              padding: const EdgeInsets.all(14.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  'public-Home',
                  style: TextStyle(color: Color(0xffD0FD3E), fontSize: 22),
                ),
              )),
        ],
      ),
      //!  singlechildScollview
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    'Calculating calories for ',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  Text(
                    'Carbs_Protein_BMI',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    height: 1,
                    width: 360,
                    color: const Color(0xffD0FD3E),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ExamplesOfCalculator()),
                  );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/assets/images/calories.jpg'),
                    ),
                    const Positioned(
                      bottom: 10,
                      left: 120,
                      child: Text(
                        'CALORIES',
                        style: TextStyle(
                          color: Color(0xffD0FD3E),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Stop Watch',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 16),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    height: 1,
                    width: 90,
                    color: const Color(0xffD0FD3E),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const StopwatchApp()),
                  );
                },
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/assets/images/watch.png'),
                    ),
                    const Positioned(
                      bottom: 10,
                      left: 145,
                      child: Text(
                        'START',
                        style: TextStyle(
                          color: Color(0xffD0FD3E),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          //  backgroundColor: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    'Nuttrition Programs(Private)',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 16),
                  ),
                  SizedBox(
                    width: 170,
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    height: 1,
                    width: 210,
                    color: const Color(0xffD0FD3E),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FoodBulkingAndDryingUp1(
                                initialIndex: 0,
                              )),
                    );
                  },
                  child: Image.asset('assets/assets/images/Private_NP.png')),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FoodBulkingAndDryingUp1(
                              initialIndex: 1,
                            )),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/dpfd1.png',
                  fit: BoxFit.fill,
                  width: 600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FoodBulkingAndDryingUp2(
                              initialIndex: 0,
                            )),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/dpfdd2.png',
                  fit: BoxFit.fill,
                  width: 600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FoodBulkingAndDryingUp2(
                              initialIndex: 1,
                            )),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/dpfd2.png',
                  fit: BoxFit.fill,
                  width: 600,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    'Training Programs',
                    style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 2),
                    height: 1,
                    width: 160,
                    color: const Color(0xffD0FD3E),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExercisesPrivate(
                                initialIndex: 0,
                              )),
                    );
                  },
                  child:
                      Image.asset('assets/assets/images/Learn_the_basic.png')),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ExercisesPrivate(
                                initialIndex: 1,
                              )),
                    );
                  },
                  child: Image.asset(
                      'assets/assets/images/Learn_the_basic_2.png')),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        },
        backgroundColor: Color(0xffD0FD3E),
        child: Icon(Icons.chat),
      ),
      bottomNavigationBar: const bottom_tab_bar(),
    );
  }
}
