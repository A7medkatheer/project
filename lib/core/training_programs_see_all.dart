import 'package:flutter/material.dart';
import 'package:flutter_application_1/Drying/drying_levels.dart';
import 'package:flutter_application_1/healthy_recipes/bulking_levels.dart';
import 'package:flutter_application_1/loss_weight/loss_wight_level_one.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';

import '../levels/Beginner/beginner_screen.dart';
import 'home.dart';

class TrainingPrograms extends StatelessWidget {
  const TrainingPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    final int index = CacheHelper().getData(key: ApiKey.index) ?? 0;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
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
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Training programs',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Exercises(Drying system)',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LevelBeginnerScreen(initialIndex: 1)),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/drying_system.png',
                  fit: BoxFit.cover,
                  width: 382,
                  height: 237,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Exercises(Bulking system)',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LevelBeginnerScreen(
                              initialIndex: 0,
                            )),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/bulking_system.png',
                  fit: BoxFit.cover,
                  width: 382,
                  height: 237,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Exercises(Push - Pull -Legs system)',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LevelBeginnerScreen(
                              initialIndex: 2,
                            )),
                  );
                },
                child: Image.asset(
                  'assets/assets/images/push_pull_legs_system.png',
                  fit: BoxFit.cover,
                  width: 382,
                  height: 237,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
