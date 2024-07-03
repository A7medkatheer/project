import 'package:flutter/material.dart';
import 'dart:math';
import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/weight.dart';
import 'package:flutter_application_1/private/home_private.dart';

import 'examples_of_calculator.dart';

class AddMeal extends StatefulWidget {
  const AddMeal({super.key});

  @override
  State<AddMeal> createState() => _IntroductionState();
}

class _IntroductionState extends State<AddMeal> {
  final int weight = CacheHelper().getData(key: ApiKey.weight);
  final int height = CacheHelper().getData(key: ApiKey.height);
  final int age = CacheHelper().getData(key: ApiKey.age);
  final String activityLevel = 'moderately active'; // Activity level
  var image = CacheHelper().getData(key: ApiKey.profilePic);
  var name = CacheHelper().getData(key: ApiKey.name);
  String _result = "";
  double totalCalories = 0;
  final TextEditingController mealNameController = TextEditingController();
  final TextEditingController mealCaloriesController = TextEditingController();
  final List<Map<String, String>> meals = [];

  @override
  void initState() {
    super.initState();
    double bmr = calculateBMR();
    double tdee = calculateTDEE(bmr);
    setState(() {
      totalCalories = tdee;
    });
    _calculate(); // calculate on widget build to get the initial BFP and recommendation
  }

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

  void _addMeal() {
    setState(() {
      final String mealName = mealNameController.text;
      final String mealCalories = mealCaloriesController.text;
      meals.add({
        'name': mealName,
        'calories': mealCalories,
      });
      final int mealCaloriesInt = int.parse(mealCalories);
      totalCalories -= mealCaloriesInt;
      mealNameController.clear();
      mealCaloriesController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const ExamplesOfCalculator()),
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
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 120,
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
                      child: CaloriesWidget(calories: totalCalories),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    controller: mealNameController,
                    decoration: InputDecoration(
                      labelText: 'Meal Name',
                      labelStyle: TextStyle(
                          color:
                              Colors.white), // Change label text color to white
                      hintText: 'Enter meal name',
                      hintStyle: TextStyle(
                          color: Colors.white), // Change hint color to white
                      fillColor: Color(0xff4D4D4D),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: mealCaloriesController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Meal Calories',
                      labelStyle: TextStyle(color: Colors.white),
                      fillColor: Color(0xff4D4D4D),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: _addMeal,
                    child: const Text('Add Meal'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            DataTable(
              columns: const [
                DataColumn(
                    label: Text('Meal Name',
                        style: TextStyle(color: Colors.white))),
                DataColumn(
                    label: Text('Calories',
                        style: TextStyle(color: Colors.white))),
              ],
              rows: meals
                  .map((meal) => DataRow(cells: [
                        DataCell(Text(meal['name']!,
                            style: TextStyle(color: Colors.white))),
                        DataCell(Text(meal['calories']!,
                            style: TextStyle(color: Colors.white))),
                      ]))
                  .toList(),
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
