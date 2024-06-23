import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/weight.dart';
import 'package:flutter_application_1/private/home_private.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _IntroductionState();
}

class _IntroductionState extends State<Welcome> {
  final int weight = CacheHelper().getData(key: ApiKey.weight);
  final int height = CacheHelper().getData(key: ApiKey.height);
  final int age = CacheHelper().getData(key: ApiKey.age);
  final String activityLevel = 'moderately active'; // Activity level
  var image = CacheHelper().getData(key: ApiKey.profilePic);
  var name = CacheHelper().getData(key: ApiKey.name);
  String _result = "";

  double calculateBMR() {
    return 88.362 +
        (13.397 * weight.toDouble()) +
        (4.799 * height.toDouble()) -
        (5.677 * age.toDouble());
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

  double calculateBMI(double weight, double height) {
    return weight / (height * height);
  }

  double calculateLevel(double bmi, int age) {
    return 1.20 * bmi + 0.23 * age - 16.2;
  }

  void _calculate() {
    double bmi = calculateBMI(weight.toDouble(),
        height.toDouble() / 100); // converting height from cm to meters
    double bfp = calculateLevel(bmi, age);
    String recommendation = bfp < 15
        ? "You should focus on Bulking."
        : "You should focus on Drying.";

    setState(() {
      _result = "BFP: ${bfp.toStringAsFixed(2)}%. $recommendation";
    });
  }

  @override
  Widget build(BuildContext context) {
    double bmr = calculateBMR();
    double tdee = calculateTDEE(bmr);
    _calculate(); // calculate on widget build to get the initial BFP and recommendation

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
                        backgroundImage: NetworkImage(image),
                      ),
                    ),
                    const SizedBox(
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
                          name,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 22),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              'Welcome, This App Recommends Your Body Exercise To be Healthy',
              textAlign: TextAlign.center,
              style: TextStyle(color: Color(0xffD0FD3E), fontSize: 19),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 55,
              width: 380,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff4D4D4D),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _result,
                  style:
                      const TextStyle(color: Color(0xffD0FD3E), fontSize: 19),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InfoCard(label: 'Height', value: '${height.toInt()} cm'),
                InfoCard(label: 'Weight', value: '${weight.toInt()} kg'),
                InfoCard(label: 'Age', value: '$age years'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff4D4D4D),
                borderRadius: BorderRadius.circular(15),
              ),
              width: 370,
              height: 252,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(12.0),
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
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff4D4D4D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 280,
                    height: 238,
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(12.0),
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
                          padding: EdgeInsets.all(12.0),
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
                          padding: EdgeInsets.all(12.0),
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
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffD0FD3E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 174,
                    height: 63,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeScreen()),
                          );
                        },
                        child: const Text(
                          'Go to system',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffD0FD3E),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    width: 174,
                    height: 63,
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePrivate()));
                        },
                        child: const Text(
                          'Home Private',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String label;
  final String value;

  const InfoCard({super.key, required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff4D4D4D),
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
              style: const TextStyle(color: Colors.white, fontSize: 15),
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

  const CaloriesWidget({super.key, required this.calories});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 230,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CircularProgressIndicator(
            value: calories / 3000,
            strokeWidth: 10,
            backgroundColor: Colors.grey,
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffD0FD3E)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '${calories.toInt()}',
                style: const TextStyle(fontSize: 30, color: Color(0xffD0FD3E)),
              ),
              const SizedBox(
                height: 60,
              ),
              const Text(
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

  const ProgressIndicatorWithLabel({
    super.key,
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
              style: const TextStyle(color: Colors.white, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(width: 10),
        Text(
          label,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
