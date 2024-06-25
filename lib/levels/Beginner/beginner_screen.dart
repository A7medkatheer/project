import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../../exercise_beginner_Drying/Day1_Chest&triceps.dart';
import '../../exercise_beginner_Drying/Day2_Back&Trapees.dart';
import '../../exercise_beginner_Drying/Day3_Cardio.dart';
import '../../exercise_beginner_Drying/Day4_Shoulders.dart';
import '../../exercise_beginner_Drying/Day5_Legs.dart';
import '../../exercise_beginner_push_pull_leg/legs.dart';
import '../../exercise_beginner_push_pull_leg/pull_1.dart';
import '../../exercise_beginner_push_pull_leg/push2.dart';
import '../../exercise_beginner_push_pull_leg/push_1.dart';
import '../../exercises_beginner_Bulking/beginner/increase_weight/Day1_Chest.dart';
import '../../exercises_beginner_Bulking/beginner/increase_weight/Day2_Back&Trapees.dart';
import '../../exercises_beginner_Bulking/beginner/increase_weight/Day3_Shoulders.dart';
import '../../exercises_beginner_Bulking/beginner/increase_weight/Day4_Biceps&Triceps.dart';
import '../../exercises_beginner_Bulking/beginner/increase_weight/Day5_Legs.dart';

class LevelBeginnerScreen extends StatelessWidget {
  final int initialIndex;

  const LevelBeginnerScreen({super.key, this.initialIndex = 0});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndex,
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.black,
              bottom: const CustomTabBar(),
            ),
          ),
          body: TabBarView(
            children: [
              //! increase weghit
              SingleChildScrollView(
                child: Column(
                  children: [
                    const Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 20,
                        ),
                        Text(
                          'exercises',
                          style:
                              TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
                        ),
                      ],
                    ),

                    //! lable 1
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const BeginnerIncreaseWeightDay1())));
                      },
                      child: Container(
                        height: 160,
                        width: 390,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/assets/images/Chest_tr.jpg',
                              width: 144,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              //   thickness: 1,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'DAY 1',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '      (CHEST)    ',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.timer_sharp),
                                    Text(' 60 Min'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.fitness_center),
                                    Text('5 Workout')
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //! lable 2
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const BeginnerIncreaseWightDay2())));
                      },
                      child: Container(
                        height: 160,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/assets/images/samll_back.jpg',
                              width: 144,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              //   thickness: 1,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'DAY 2',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '  (BACK-TRAPEES)',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.timer_sharp),
                                    Text(' 60 Min'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.fitness_center),
                                    Text('6 Workout')
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //! lable 3
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const BeginnerIncreaseWightDay3())));
                      },
                      child: Container(
                        height: 160,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/assets/images/small_sholder.png',
                              width: 144,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              //   thickness: 1,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'DAY 3',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '      (SHOULDERS)',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.timer_sharp),
                                    Text(' 60 Min'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.fitness_center),
                                    Text('6 Workout')
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    //! lable 4
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const BeginnerIncreaseWightDay4())));
                      },
                      child: Container(
                        height: 160,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/assets/images/small_armor.jpg',
                              width: 144,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              //   thickness: 1,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '  DAY 4',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '(BICEPS-TRICEPS)',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.timer_sharp),
                                    Text(' 60 Min'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.fitness_center),
                                    Text('5 Workout')
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // //! lable 5
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) =>
                                    const BeginnerIncreaseWightDay5())));
                      },
                      child: Container(
                        height: 160,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white70),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              'assets/assets/images/samll_leg.jpg',
                              width: 144,
                              height: 170,
                              fit: BoxFit.cover,
                            ),
                            const VerticalDivider(
                              color: Colors.black,
                              //   thickness: 1,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'DAY 5',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '           (LEGS)',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.timer_sharp),
                                    Text(' 60 Min'),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 110,
                                    ),
                                    Icon(Icons.fitness_center),
                                    Text('5 Workout')
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // //! lable 6 & 7
                    Container(
                      height: 80,
                      width: 380,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffD0FD3E)),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'DAY 6 and 7 REST',
                                    style: TextStyle(fontSize: 20),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    const Rate_Us(),
                  ],
                ),
              ),
//! Drying
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 20,
                          ),
                          Text(
                            'exercises',
                            style: TextStyle(
                                color: Color(0xffD0FD3E), fontSize: 20),
                          ),
                        ],
                      ),
                      //! lable 1
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BeginnerDryingDay1()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/assets/images/Chest_tr.jpg',
                                width: 144,
                                height: 170,
                                fit: BoxFit.cover,
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 1',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '(CHEST_TRICEPS)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('5 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //! lable 2
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BeginnerDryingDay2()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/assets/images/samll_back.jpg',
                                width: 144,
                                height: 170,
                                fit: BoxFit.cover,
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 2',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '(BACK-BICEPS)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('6 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //! lable 3
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BeginnerDryingDay3()),
                          );
                        },
                        child: Container(
                          height: 80,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color(0xffD0FD3E)),
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              //             Image.asset(
                              //  //             'assets/assets/images/Chest_tr.jpg',
                              //               width: 144,
                              //               height: 110,
                              //               fit: BoxFit.cover,
                              //   ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'DAY 3 CARDIO',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      //! lable 4
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BeginnerDryingDay4()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/assets/images/small_sholder.png',
                                width: 144,
                                height: 170,
                                fit: BoxFit.cover,
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '  DAY 4',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '(BICEPS-TRICEPS)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('6 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // //! lable 5
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const BeginnerDryingDay5()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/assets/images/samll_leg.jpg',
                                width: 144,
                                height: 170,
                                fit: BoxFit.cover,
                              ),
                              const VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 5',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '(LEGS)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 110,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('5 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // //! lable 6 & 7
                      Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //             Image.asset(
                            //  //             'assets/assets/images/Chest_tr.jpg',
                            //               width: 144,
                            //               height: 110,
                            //               fit: BoxFit.cover,
                            //   ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DAY 6 and 7 REST',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Rate_Us(),
                      //! Push-pull leg
                    ],
                  ),
                ),
              ),

              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          SizedBox(
                            height: 50,
                            width: 20,
                          ),
                          Text(
                            'exercises',
                            style: TextStyle(
                                color: Color(0xffD0FD3E), fontSize: 20),
                          ),
                        ],
                      ),
                      //! lable 1
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Push_1()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 385,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Image.asset(
                              //   'assets/assets/images/Chest_tr.jpg',
                              //   width: 144,
                              //   height: 170,
                              //   fit: BoxFit.cover,
                              // ),
                              VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    // crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 1 (PUSH 1)',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '   (CHEST-Front shoulders)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('5 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //! lable 2
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Pull_1()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Image.asset(
                              //   'assets/assets/images/Chest_tr.jpg',
                              //   width: 144,
                              //   height: 170,
                              //   fit: BoxFit.cover,
                              // ),
                              VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 2(PULL 1)',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '  (BACK-Back Shouders)  ',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('6 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      //! lable 3
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Legs()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Image.asset(
                              //   'assets/assets/images/Chest_tr.jpg',
                              //   width: 144,
                              //   height: 170,
                              //   fit: BoxFit.cover,
                              // ),
                              VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 3',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '                      (Legs)     ',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('5 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 20,
                      ),
                      //! lable 4
                      Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Image.asset(
                            //   'assets/assets/images/Chest_tr.jpg',
                            //   width: 144,
                            //   height: 110,
                            //   fit: BoxFit.cover,
                            //  ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DAY 4 REST',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // //! lable 5
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Push_2()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Image.asset(
                              //   'assets/assets/images/Chest_tr.jpg',
                              //   width: 144,
                              //   height: 170,
                              //   fit: BoxFit.cover,
                              // ),
                              VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 5 (PUSH 2)',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '  (BICEPS-TRICEPS)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('6 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // //! lable 6
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Legs()),
                          );
                        },
                        child: Container(
                          height: 160,
                          width: 380,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white70),
                          child: const Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // Image.asset(
                              //   'assets/assets/images/Chest_tr.jpg',
                              //   width: 144,
                              //   height: 170,
                              //   fit: BoxFit.cover,
                              // ),
                              VerticalDivider(
                                color: Colors.black,
                                //   thickness: 1,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'DAY 6 (PULL 2)',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    '                      (Legs)',
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.timer_sharp),
                                      Text(' 60 Min'),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 220,
                                      ),
                                      Icon(Icons.fitness_center),
                                      Text('6 Workout')
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      // //! lable 7
                      Container(
                        height: 80,
                        width: 380,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Image.asset(
                            //   'assets/assets/images/Chest_tr.jpg',
                            //   width: 144,
                            //   height: 110,
                            //   fit: BoxFit.cover,
                            //  ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'DAY 7 REST',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      const Rate_Us(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomTabBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(35.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.black, Colors.black],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: const Color(0xffD0FD3E),
        ),
        tabs: [
          _buildTab('Bulking'),
          _buildTab('Drying'),
          _buildTab('Push-Pull-Leg'),
        ],
      ),
    );
  }

  Widget _buildTab(String text) {
    return Tab(
      child: Center(
        child: Text(text),
      ),
    );
  }
}
