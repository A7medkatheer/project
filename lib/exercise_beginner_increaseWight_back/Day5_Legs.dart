// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../constant/constant.dart';
import '../TargetPage/custom_target_page.dart';

class BeginnerIncreaseWightBackDay5 extends StatelessWidget {
  const BeginnerIncreaseWightBackDay5({super.key});

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
                  Image.asset('assets/assets/images/legs_2.png'),
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
                      'Day 5 | Legs',
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
                  'Legs Exercise',
                  '    (Free squash bar)',
                  'assets/assets/images/free_squash_bar.png',
                  'assets/assets/images/Free_squash_bar.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '  (Walking dumbbell)',
                  'assets/assets/images/Walking_dumbbell_2.png',
                  'assets/assets/images/Walking_dumbbell2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '    (Payment device)',
                  'assets/assets/images/payment_device.png',
                  'assets/assets/images/Payment_device.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '  (Rear dumbbell)',
                  'assets/assets/images/rear_dumbbell.png',
                  'assets/assets/images/Rear_dumbbell2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '  (Front flap)',
                  'assets/assets/images/front_flap2.png',
                  'assets/assets/images/front_flap3.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Rear flap)',
                  'assets/assets/images/rear_flap2.png',
                  'assets/assets/images/Rear_flap2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Legs Exercise',
                  '(Calf)',
                  'assets/assets/images/calf2.png',
                  'assets/assets/images/FLAT_BAR.gif'),
              const SizedBox(
                height: 30,
              ),
              const Rate_Us(),
              const bottom_tab_bar(),
            ],
          ),
        ),
      ),
    );
  }
}
