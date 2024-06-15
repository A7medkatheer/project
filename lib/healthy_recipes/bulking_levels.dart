import 'package:flutter/material.dart';

import '../constant/constant.dart';

class HealthyRecipesBulkingUp1 extends StatelessWidget {
  const HealthyRecipesBulkingUp1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
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
              //!   Bulking Up 1

              SingleChildScrollView(
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
                            ' Whey\n protein         1 Scoop       120           24         3         1',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Qats                125 g       433.75       15     73.75     8.63',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Walnuts           30 g       196           4.56    4.08     19.56',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    const Text(
                      'Preparation method:Mix oats with walnuts and \n     protein, then add water and stir the mixture',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
//! label 2
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
                            ' Banana         100              89             1.1        23      0.3',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Walnuts           30 g       196           4.56    4.08     19.56',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Boiled egg      2 eggs    140           12         2           10',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Multivamin\nSupplement   1 tablet       -               -            -              -',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Basmati\nRice                  120 g       416.6       8.64     92.4     0.96',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Boiled egg       3 eggs       210           18        3          15',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Medium salad example: tomatoes with cucumbers \n                           with a little olive oil ',
                      style: TextStyle(color: Colors.white, fontSize: 16),
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
                            ' Coffee             1                  2             0             0       0',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Banana           199 g           89          1.1          23     0.3',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                        "Fiveth meal : Post Workout",
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
                            ' Coffee             200g         242           48           0       3.6',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                            'Banana            120 g       416.6       8.64     92.4     0.96',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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
                      'Medium salad example: tomatoes with cucumbers \n                           with a little olive oil ',
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
                            'Total                  2796           189.4       318.9       83.9    ',
                            style: TextStyle(color: Colors.white, fontSize: 16),
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

              //!   Bulking Up 2
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
                              ' Whole Grain \n      Bread         50 g         134.5         4.5        25      1.5',
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
                              'Boiled egg     2 eggs        140           12          2         10',
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
                              'Coffee Without\n        Sugar          1                2               0           0          0',
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
                              ' Almond         40 g           230         8.48       8.66  19.76',
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
                              'Medium-sized \n       apple      150 g          150          0            19.5        0',
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
                              'Multivamin\nSupplement   1 tablet       -               -            -              -',
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
                              'Basmati\nRice                  100 g       348           7.2       77         0.8',
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
                              ' Whey\n protein        1 scoop         120           24           3       1',
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
                              'Oats               80 g             277.6       9.6     47.2     5.52',
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
                              'Almond         30 g             162.5       6.36   6.50   14.82',
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
                              'Banana         100 g             89            1.1       23      0.3',
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
                        height: 20,
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
                              'Basmati\nrice                  100 g       348           7.2       77         0.8',
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
                              'Total               2796.6           194.3       323.7       71.8    ',
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
  Size get preferredSize => const Size.fromHeight(30.0);

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
          _buildTab('Bulking Up 1'),
          _buildTab('Bulking Up 2'),
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
