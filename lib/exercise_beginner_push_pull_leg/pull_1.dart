// ignore_for_file: camel_case_types, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';

import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class Pull_1 extends StatelessWidget {
  const Pull_1({super.key});

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
                      'This system contains complete front \n \t  body exercises as broken drown in \n \t                  front of you ',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),

                _buildExerciseHeader(title: 'Exercise Chest'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    ' Exercise Chest',
                    '(High Bar)',
                    'assets/assets/images/High_bar.jpeg',
                    'assets/assets/images/High_bar.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Chest',
                    '(Flat Bar)',
                    'assets/assets/images/flat_bar2.png',
                    'assets/assets/images/Flat_bar.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Chest',
                    '(Butterfly)',
                    'assets/assets/images/Butterfly3.png',
                    'assets/assets/images/Butterfly.gif'),
                const SizedBox(height: 30),

                _buildExerciseHeader(title: 'Exercise Front shoulder'),

                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Side dummbbell)',
                    'assets/assets/images/Side_dumbbell.png',
                    'assets/assets/images/Side_dumbbell.gif'),

                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Front Flap)',
                    'assets/assets/images/Front_flap.jpg',
                    'assets/assets/images/Frontflap.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Side Flap)',
                    'assets/assets/images/side_flap2.png',
                    'assets/assets/images/Side_flap.gif'),
                _buildExerciseHeader(title: 'Exercise Triceps'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Bar zigzag dik)',
                    'assets/assets/images/Bar_zigzag_dik.jpg',
                    'assets/assets/images/Bar_zig.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Shoulders',
                    '(Rope on the cable)',
                    'assets/assets/images/Rope_on_the_cable.jpg',
                    'assets/assets/images/Rope_on_the_cable.gif'),

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

  Widget _buildExerciseCard({
    required String title,
    required String subtitle,
    required String imagePath,
  }) {
    return Container(
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
                  subtitle,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20.0, left: 30),
                child: Text(
                  '3 Sets 15-12-10 Reps',
                  style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
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
    );
  }
}
