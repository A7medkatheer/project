// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../../../constant/constant.dart';
import '../TargetPage/custom_target_page.dart';

class BeginnerIncreaseWightBackDay2 extends StatelessWidget {
  const BeginnerIncreaseWightBackDay2({super.key});

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
                  Image.asset('assets/assets/images/Back&Trapees2.png'),
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
                      'Day 2 | Back&Trapees',
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
                  'Back Exercise',
                  '    (Inverted bar)',
                  'assets/assets/images/inverted_bar.jpg',
                  'assets/assets/images/Inverted_bar.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '  (Wide High pull)',
                  'assets/assets/images/Wide_high_pull.jpg',
                  'assets/assets/images/Wide_high_pull2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '(Tight high pull)',
                  'assets/assets/images/Tight_high_poll.jpg',
                  'assets/assets/images/Tight_high_pull.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '  (Dumbbell)',
                  'assets/assets/images/Dumbbell.jpg',
                  'assets/assets/images/Dumbbell2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Back Exercise',
                  '  (His mind)',
                  'assets/assets/images/His_mind.jpg',
                  'assets/assets/images/His_mind.gif'),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 200.0, top: 20),
                child: Container(
                  height: 44,
                  width: 181,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 83, 76, 76),
                  ),
                  child: const Center(
                    child: Text(
                      "Exercise TRICEPS",
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Biceps Exercise',
                  '  (Bar zigzag dik)',
                  'assets/assets/images/Bar_zigzag_dik2.jpg',
                  'assets/assets/images/Bar_zig.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Biceps Exercise',
                  '(Exchange Dumbbells )',
                  'assets/assets/images/Exchange_dimple.jpg',
                  'assets/assets/images/Exchange_dumbbells2.gif'),
              const SizedBox(height: 30),
              _exerciseContainer(
                  context,
                  'Biceps Exercise',
                  '  (Dumbbell Hammer)',
                  'assets/assets/images/Dumbbell_hammer.jpg',
                  'assets/assets/images/dumbbell_hammer2.gif'),
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
