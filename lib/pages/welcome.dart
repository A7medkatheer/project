import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/private/home_private.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _IntroductionState();
}

class _IntroductionState extends State<Welcome> {
  final double weight = 65; 
  final double height = 177; 
  final int age = 22; 
  final String activityLevel = 'moderately active'; // Activity level

  double calculateBMR() {
    return 88.362 + (13.397 * weight) + (4.799 * height) - (5.677 * age);
  }

  double calculateTDEE(double bmr) {
    // Activity factor mapping
    Map<String, double> activityFactors = {
      'sedentary': 1.2,
      'lightly active': 1.375,
      'moderately active': 1.55,
      'very active': 1.725,
      'super active': 1.9,
    };
    return bmr * activityFactors[activityLevel]!;
  }

  @override
  Widget build(BuildContext context) {
    double bmr = calculateBMR();
    double tdee = calculateTDEE(bmr);

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color(0xffD0FD3E),
                      radius: 30,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 28,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning ',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 18),
                        ),
                        Text(
                          'Said Ahmed ',
                          style: TextStyle(color: Colors.white, fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Welcome, This App Recommends Your Body \nBulking Up To Gain Weight',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffD0FD3E), fontSize: 19),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(label: 'Height', value: '177 cm'),
                InfoCard(label: 'Weight', value: '65 kg'),
                InfoCard(label: 'Age', value: '22 years'),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: Color(0xff4D4D4D),
                borderRadius: BorderRadius.circular(15),
              ),
              width: 370,
              height: 252,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Calories',
                          style:
                              TextStyle(color: Color(0xffD0FD3E), fontSize: 22),
                        ),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffD0FD3E),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: CaloriesWidget(calories: tdee),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff4D4D4D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 280,
                    height: 238,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ProgressIndicatorWithLabel(
                                percentage: 30,
                                color: Colors.green,
                                label: 'Diet',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ProgressIndicatorWithLabel(
                                percentage: 50,
                                color: Colors.blue,
                                label: 'Work Out',
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            children: [
                              ProgressIndicatorWithLabel(
                                percentage: 40,
                                color: Colors.red,
                                label: 'Focus',
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                        },
                        child: Text(
                          'Go to system',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffD0FD3E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 174,
                    height: 63,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePrivate()),
                          );
                        },
                        child: Text(
                          'Home Private',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffD0FD3E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 174,
                    height: 63,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String label;
  final String value;

  InfoCard({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff4D4D4D),
        borderRadius: BorderRadius.circular(15),
      ),
      width: 100,
      height: 70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              value,
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            Text(
              label,
              style:
                  TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class CaloriesWidget extends StatelessWidget {
  final double calories;

  CaloriesWidget({required this.calories});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 230,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: calories / 3000,
            strokeWidth: 10,
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Color(0xffD0FD3E)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${calories.toInt()}',
                style: TextStyle(fontSize: 30, color: Color(0xffD0FD3E)),
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'KCal',
                style: TextStyle(fontSize: 20, color: Color(0xffD0FD3E)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProgressIndicatorWithLabel extends StatelessWidget {
  final double percentage;
  final Color color;
  final String label;

  ProgressIndicatorWithLabel({
    required this.percentage,
    required this.color,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                value: percentage / 100,
                strokeWidth: 5,
                backgroundColor: Colors.grey,
                valueColor: AlwaysStoppedAnimation<Color>(color),
              ),
            ),
            Text(
              '${percentage.toInt()}%',
              style: TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
