// ignore_for_file: unused_element, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class Legs extends StatelessWidget {
  const Legs({super.key});

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
                      'This system contains complete leg \n \t   exercises as divided before you ',
                      style: TextStyle(color: Colors.white, fontSize: 20)),
                ),

                _buildExerciseHeader(title: 'Exercise Legs'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    ' Exercise Legs',
                    '(squash bar)',
                    'assets/assets/images/squash_bar.png',
                    'assets/assets/images/squash_bar.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Legs',
                    '(Walking Dumbbells)',
                    'assets/assets/images/walking_dumbbell.png',
                    'assets/assets/images/Walking_dumbbells.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Legs',
                    '(Payment Device)',
                    'assets/assets/images/payment_device.png',
                    'assets/assets/images/Payment_device.gif'),

                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Legs',
                    '(Rear Dumbbells)',
                    'assets/assets/images/rear_dumbbell.png',
                    'assets/assets/images/Rear_dumbbells.gif'),

                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Legs',
                    '(Rear Flap)',
                    'assets/assets/images/rear_flap2.png',
                    'assets/assets/images/Rear_flap.gif'),
                const SizedBox(height: 30),

                _exerciseContainer(
                    context,
                    'Exercise Legs',
                    '(Front Flap)',
                    'assets/assets/images/front_flap3.png',
                    'assets/assets/images/Front_flap.gif'),
                const SizedBox(height: 30),
                _exerciseContainer(
                    context,
                    'Exercise Legs',
                    '(Claf Device)',
                    'assets/assets/images/claf_device.png',
                    'assets/assets/images/FLAT_BAR.gif'),
                const SizedBox(height: 30),

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
