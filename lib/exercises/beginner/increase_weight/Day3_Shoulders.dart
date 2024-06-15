// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../TargetPage/custom_target_page.dart';
import '../../../constant/constant.dart';

class BeginnerIncreaseWightDay3 extends StatelessWidget {
  const BeginnerIncreaseWightDay3({super.key});

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
                  Image.asset('assets/assets/images/Shoulders.png'),
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
                      'Day 3 | Shoulders&Tripess',
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
              const SizedBox(height: 50),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '(Front Bar)',
                  'assets/assets/images/Front_bar.jpg',
                  'assets/assets/images/Front_bar.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '(Front Dumbbell)',
                  'assets/assets/images/Front_dumbbell.jpg',
                  'assets/assets/images/Front_dumbbell.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '(Front flap)',
                  'assets/assets/images/Front_flap.jpg',
                  'assets/assets/images/Front_flap.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '(Side flap)',
                  'assets/assets/images/Side_flap.jpg',
                  'assets/assets/images/Side_flap.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '(Butterfly)',
                  'assets/assets/images/Butterfly.jpg',
                  'assets/assets/images/Butterfly.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Shoulders Exercise',
                  '(Back Dumbbell)',
                  'assets/assets/images/Back_dumbbell.jpg',
                  'assets/assets/images/FLAT_BAR.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Trapes Exercise',
                  '(Back Dumbbell)',
                  'assets/assets/images/Trapess_exer.jpg',
                  'assets/assets/images/Back_dumbbell.gif'),
              const Rate_Us(),
              const bottom_tab_bar(),
            ],
          ),
        ),
      ),
    );
  }
}
