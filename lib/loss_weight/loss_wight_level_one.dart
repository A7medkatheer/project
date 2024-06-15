import 'package:flutter/material.dart';

import '../constant/constant.dart';

class LossWightUp1 extends StatelessWidget {
  const LossWightUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
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
              //! loss weight
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      //! lable 1
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Center(
                            child: Text(
                          "First meal : Breakfast",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Coffee              1                2               0           0          0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),

                      //! lable 2
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Center(
                            child: Text(
                          "Second meal : Snack",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Boiled egg \n     While             3               51          10.8        0.6       0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Qats                 100 g          347          12         60        7',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Boiled egg       2 eggs        140           12          2         10',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              ' Almond            40 g           230         8.48      8.66  19.76',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Multivamin\nSupplement   1 Tablet       -               -            -              -',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      //!  lable 3
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Center(
                            child: Text(
                          "Thired meal : Breakfast",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              ' Chicken\n breast             200g         242           48           0       3.6',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Sweet\nPotato              150 g       129           2.4        30      0.15',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Boiled egg     3 eggs        210           18          3         15',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Medium-sizes salad with tomatoes, cucumbers and a little  \n                                            olive oil ',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),

                      //!  lable 4
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Center(
                            child: Text(
                          "Fourth meal : Pre work out Snack",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Coffee              1                2               0           0          0',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),

                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),

                      const Text(
                        'Preparation method:Mix oats with almonds and \n   protein, then add water and put everything in\n                         the electric blender',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),

                      //!  lable 5
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffD0FD3E)),
                        child: const Center(
                            child: Text(
                          "Fifth meal : Post Workout",
                          style: TextStyle(fontSize: 18),
                        )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        children: [
                          Text(
                            '                        Quantity   Calories   Protein   Carb   Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Canned Tuna     200g        400           48           0     22',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Basmati\nrice                      50 g       174           3.6       38.5    0.4',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Medium salad example: tomatoes with \n      cucumbers with a little olive oil ',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const Row(
                        children: [
                          Text(
                            '                         Quantity        Protein       Carb          Fat',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text(
                              'Total               1934.4           176.2       136.3       80.2    ',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Divider(
                        thickness: 1,
                        color: Colors.white,
                      ),

                      const Rate_Us(),
                      const bottom_tab_bar(),
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
  Size get preferredSize => const Size.fromHeight(25.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 230,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Colors.black, Colors.black],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: const Color(0xffD0FD3E),
        ),
        tabs: [
          _buildTab('Loss Wight '),
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
