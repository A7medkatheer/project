// ignore_for_file: file_names, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';

import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class BeginnerIncreaseWightDay4 extends StatelessWidget {
  const BeginnerIncreaseWightDay4({super.key});
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
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset('assets/assets/images/Biceps&Triceps.png'),
                  const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.arrow_left_sharp,
                      color: Colors.white,
                      size: 40,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 160),
                    child: Text(
                      'Day 4 | Biceps&Triceps',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 30.0, top: 200),
                    child: Row(
                      children: [
                        Text(
                          '      6 Week ',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffD0FD3E),
                        ),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffD0FD3E),
                        ),
                        Icon(
                          Icons.local_fire_department_outlined,
                          color: Color(0xffD0FD3E),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              _buildExerciseHeader(title: 'Exercise Biceps'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Biceps Exercise',
                  '(Wide Straight Bar)',
                  'assets/assets/images/Wide_straight_bar.jpg',
                  'assets/assets/images/Wide_straight_bar.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Biceps Exercise',
                  '(Narrow fulcrum bar)',
                  'assets/assets/images/Narrow_fulcrum_bar.jpg',
                  'assets/assets/images/Anchor_device.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Biceps Exercise',
                  '(Exchange dimple)',
                  'assets/assets/images/Exchange_dimple.jpg',
                  'assets/assets/images/Exchange_dumbbell.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Biceps Exercise',
                  '(Double hammer)',
                  'assets/assets/images/Double_hammer.jpg',
                  'assets/assets/images/Double_hammer.gif'),
              _buildExerciseHeader(title: 'Exercise Triceps'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Triceps Exercise',
                  '(Bar zigzag is sleeping)',
                  'assets/assets/images/Bar_zigzag_is_sleeping.jpg',
                  'assets/assets/images/Bar_zigzag.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Triceps Exercise',
                  '(Cable pulled ruler)',
                  'assets/assets/images/Cable_pulled_ruler.jpg',
                  'assets/assets/images/FLAT_BAR.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Triceps Exercise',
                  '(Stab)',
                  'assets/assets/images/Stab.jpg',
                  'assets/assets/images/Stab.gif'),
              const Rate_Us(),
              const bottom_tab_bar(),
            ],
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
        width: 181,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 83, 76, 76),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 22),
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
