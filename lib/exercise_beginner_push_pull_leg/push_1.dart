// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class Push_1 extends StatelessWidget {
  const Push_1({super.key});

  Widget _exerciseContainer(BuildContext context, String title, String subTitle,
      String imagePath, String Gifimage) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CustomTargetPage(
              exerciseName: subTitle,
              //      exerciseImage: imagePath,
              Gifimage: Gifimage,
            ),
          ),
        );
      },
      child: Container(
        height: 120,
        width: 382,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 83, 76, 76),
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 20),
                  child: Text(
                    title,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0, left: 10),
                  child: Text(
                    subTitle,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20.0, left: 30),
                  child: Text(
                    '3 Sets 15-12-10 Reps',
                    style:
                        TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 3),
            Image.asset(
              imagePath,
              width: 160,
              height: 115,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_left_sharp,
                  color: Colors.white,
                  size: 40,
                ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 30.0, top: 160),
                //   child: Text(
                //     'Day 4 | Biceps&Triceps',
                //     style: TextStyle(color: Colors.white, fontSize: 24),
                //   ),
                // ),
                // Padding(
                //   padding: const EdgeInsets.only(left: 30.0, top: 200),
                //   child: Row(
                //     children: [
                //       Text(
                //         '      6 Week ',
                //         style: TextStyle(color: Colors.white, fontSize: 18),
                //       ),
                //       Icon(
                //         Icons.local_fire_department_outlined,
                //         color: Color(0xffD0FD3E),
                //       ),
                //       Icon(
                //         Icons.local_fire_department_outlined,
                //         color: Color(0xffD0FD3E),
                //       ),
                //       Icon(
                //         Icons.local_fire_department_outlined,
                //         color: Color(0xffD0FD3E),
                //       ),
                //     ],
                //   ),
                // ),
                const Center(
                  child: Text(
                      'This system contains complete back \n \t  body exercises as broken drown in \n \t                  front of you ',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),

                _buildExerciseHeader(title: 'Exercise Back'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    ' Exercise Back',
                    '(Wide high pull)',
                    'assets/assets/images/Wide_high_pull.jpg',
                    'assets/assets/images/Wide_high_pull.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Back',
                    '(Tight high pull)',
                    'assets/assets/images/Tight_high_poll.jpg',
                    'assets/assets/images/Tight_high_pull.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Back',
                    '(Dumbbells)',
                    'assets/assets/images/Dumbbell.jpg',
                    'assets/assets/images/Dumbbells.gif'),
                const SizedBox(height: 30),

                _buildExerciseHeader(title: 'Exercise Back shoulder'),

                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Rear flap)',
                    'assets/assets/images/rear_flap3.png',
                    'assets/assets/images/Rear_flap3.gif'),

                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Back S mattress)',
                    'assets/assets/images/Back_shoulder_mattress.png',
                    'assets/assets/images/Back_sholder.gif'),
                const SizedBox(height: 30),

                _buildExerciseHeader(title: 'Exercise Biceps'),
                const SizedBox(height: 30),

                _exerciseContainer(
                    context,
                    'Exercise Biceps',
                    '(Exchange on Cable)',
                    'assets/assets/images/exchange_on_cable.png',
                    'assets/assets/images/Exchange_on_cable.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Biceps',
                    '(Bar zigzag dik)',
                    'assets/assets/images/Wide_straight_bar.jpg',
                    'assets/assets/images/Wide_straight_bar.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Biceps',
                    '(Rope on the cable)',
                    'assets/assets/images/Double_hammer.jpg',
                    'assets/assets/images/Dumbbell_hammer.gif'),

                const Rate_Us(),
                const bottom_tab_bar(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildExerciseHeader({required String title}) {
    return Padding(
      padding: const EdgeInsets.only(right: 200.0, top: 20),
      child: Container(
        height: 44,
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            //  color: Color.fromARGB(255, 83, 76, 76),
            color: const Color(0xffD0FD3E)),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }

}
