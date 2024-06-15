import 'package:flutter/material.dart';
import '../../constant/constant.dart';

class FoodBulkingAndDryingUp1 extends StatelessWidget {
  const FoodBulkingAndDryingUp1({super.key});

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
              SingleChildScrollView(
                child: Column(
                  children: [
                    buildMealSection(
                      context,
                      "First meal : Breakfast",
                      [
                        'Whole Grain\n   bread          50 g           134.5           4.5       25      1.5',
                        'Boiled Egg     2 Eggs       140             12         2       10',
                        'Peanut\nButter             20g             117           4.73     4.30    10 ',
                        'Coffee              1                   2             0            0         0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Second meal : Snack",
                      [
                        'Almond           40 g        230             8.48     8.66  19.76',
                        'Medium\nSized Apple   150g       150               0         19.5      0 ',
                        'Multivitamin\nSupplement  1 Table      0                 0            0         0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Thired meal : Breakfast",
                      [
                        'Chicken\n breast             200g         242           48           0       3.6',
                        'Sweet\nPotato             150g         129          2.4           30    0.15',
                        'Basmati\nRice                 100g         348          7.2           77     0.8',
                        'Medium-sized salad tomatoes with cucumbers \n                    with a little olive oil ',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fourth meal : Pre work out Snack",
                      [
                        'Coffee             1                  2             0             0       0',
                        'Banana           100 g           89          1.1          23     0.3',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fifth meal : Post Workout",
                      [
                        'Chicken\n breast             200g         242           48           0       3.6',
                        'Basmati\nRice                 120g         417.6        8.64      92.4   0.96',
                        'Medium-sized salad tomatoes with cucumbers \n                    with a little olive oil ',
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 75),
                    const Row(
                      children: [
                        Text(
                          '                         Quantity        Protein       Carb          Fat',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    const CustomDividerWithText(
                      text:
                          'Total                2862.2           195.8       339.2         72    ',
                    ),
                    const Rate_Us(),
                    const bottom_tab_bar(),
                  ],
                ),
              ),
              //! Drying Section
              SingleChildScrollView(
                child: Column(
                  children: [
                    buildMealSection(
                      context,
                      "First meal : Breakfast",
                      [
                        'Boiled Egg     3 Eggs       210             18         3       15',
                        'Boiled\nEgg White       3                  51            10.8      0.6     03',
                        'Oats                90 g             312          10.8      57      6.3',
                        'Almond          20g             118.5        4.72    1.12 10.58',
                        '       Preparation Method : Mix Oats With Walnuts \n   And Protein, Then add Water And Stir The Mixture',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Second meal : Snack",
                      [
                        'Almond           30 g        177             7.08     1.68  15.87',
                        'Medium\nSized Apple   150g       150               0         19.5      0 ',
                        'Multivitamin\nSupplement  1 Table      0                 0            0         0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Thired meal : Breakfast",
                      [
                        'Chicken\n breast             200g         242           48           0       3.6',
                        'Sweet\nPotato             150g         129          2.4           30    0.15',
                        'Medium-sized salad tomatoes with cucumbers \n                    with a little olive oil ',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fourth meal : Pre work out Snack",
                      [
                        'Coffee             1                  2             0             0       0',
                        'Banana           100 g           89          1.1          23     0.3',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fifth meal : Post Workout",
                      [
                        'Chicken\n breast             200g         242           48           0       3.6',
                        'Basmati\nRice                 120g         417.6        8.64      92.4   0.96',
                        'Fried Egg           2              140            12         2        10',
                        'Medium-sized salad tomatoes with cucumbers \n                    with a little olive oil ',
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    const SizedBox(height: 75),
                    const Row(
                      children: [
                        Text(
                          '                         Quantity        Protein       Carb          Fat',
                          style: TextStyle(color: Colors.white, fontSize: 17),
                        ),
                      ],
                    ),
                    const CustomDividerWithText(
                      text:
                          'Total                1976.6           166.5       175.9       65.8',
                    ),
                    const Rate_Us(),
                    const bottom_tab_bar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMealSection(
      BuildContext context, String mealName, List<String> items) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Container(
            height: 50,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffD0FD3E),
            ),
            child: Center(
              child: Text(
                mealName,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              Text(
                '                        Quantity   Calories   Protein   Carb   Fat',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
          for (String item in items) CustomDividerWithText(text: item),
        ],
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
          _buildTab('Bulking Up'),
          _buildTab('Drying'),
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

class CustomDividerWithText extends StatelessWidget {
  final String text;
  final Color dividerColor;
  final double fontSize;
  final double padding;

  const CustomDividerWithText({
    super.key,
    required this.text,
    this.dividerColor = Colors.white,
    this.fontSize = 15,
    this.padding = 8.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          thickness: 1,
          color: dividerColor,
        ),
        Padding(
          padding: EdgeInsets.all(padding),
          child: Row(
            children: [
              Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: fontSize),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
