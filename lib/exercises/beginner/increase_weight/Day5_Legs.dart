// ignore_for_file: file_names, non_constant_identifier_names, unused_element

import 'package:flutter/material.dart';

import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class BeginnerIncreaseWightDay5 extends StatelessWidget {
  const BeginnerIncreaseWightDay5({super.key});

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
              _buildHeader(
                imagePath: 'assets/assets/images/Legs.png',
                title: 'Day 5 | Legs',
              ),
              const SizedBox(height: 50),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Front Bar)',
                  'assets/assets/images/front_bar.png',
                  'assets/assets/images/Front_bar2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Rear flap device)',
                  'assets/assets/images/Rear_flap_device.png',
                  'assets/assets/images/Rear_flap_device.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Walking dumbbell)',
                  'assets/assets/images/walking_dumbbell.png',
                  'assets/assets/images/Walking_dumbbell.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Rear dumbbell)',
                  'assets/assets/images/rear_dumbbell.png',
                  'assets/assets/images/Rear_dumbbell.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Front flap)',
                  'assets/assets/images/front_flap_2.png',
                  'assets/assets/images/Front_flap2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Calf)',
                  'assets/assets/images/calf.png',
                  'assets/assets/images/FLAT_BAR.gif'),
              const Rate_Us(),
              const bottom_tab_bar(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader({required String imagePath, required String title}) {
    return Stack(
      children: [
        Image.asset(imagePath),
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Icon(
            Icons.arrow_left_sharp,
            color: Colors.white,
            size: 40,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30.0, top: 160),
          child: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 24),
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
        ),
      ],
    );
  }

  Widget _buildExerciseCard({required String title, required String subtitle}) {
    return SizedBox(
      height: 120,
      width: 382,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 83, 76, 76),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 40),
              child: Text(
                title,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, left: 40),
              child: Text(
                subtitle,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0, left: 130),
              child: Text(
                '3 Sets 15-12-10 Reps',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
