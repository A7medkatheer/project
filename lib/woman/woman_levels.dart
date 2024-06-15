import 'package:flutter/material.dart';
import '../../constant/constant.dart';

class WomanLevels extends StatelessWidget {
  const WomanLevels({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
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
              SingleChildScrollView(
                child: Column(
                  children: [
                    buildMealSection(
                      context,
                      "First meal : Breakfast",
                      [
                        'Qats               100 g           347           12        60       7',
                        'Walnuts          30  g            196          4.56   4.08    19.6',
                        'Cattage\nCheese          100 g             98.5           11     3.4     1.2 ',
                        '       Preparation Method : Mix Oats With Walnuts \n   And Protein, Then add Water And Stir The Mixture',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Second meal : Snack",
                      [
                        'Medium\nSized Apple   150g       150               0         19.5      0 ',
                        'Sweet\nPotato             75g         64.5            1.2        1.5   0.075',
                        'Multivitamin\nSupplement  1 Table      0                 0            0         0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Thired meal : Breakfast",
                      [
                        'Chicken\n breast             100g         121           24           0       1.8',
                        'Basmati\nRice                  50g         174          3.6           38.5    0.4',
                        '       Medium-sized salad tomatoes with cucumbers \n                              with a little olive oil ',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fourth meal : Pre work out Snack",
                      [
                        'Coffee             1                  2             0             0       0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fifth meal : Post Workout",
                      [
                        'Chicken\n breast             100g         121           24           0       1.8',
                        'Basmati\nRice                  50g         174          3.6           38.5    0.4',
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
                          'Total                1448                84           178.5         33    ',
                    ),
                    const Rate_Us(),
                    const bottom_tab_bar(),
                  ],
                ),
              ),
              //! Loss Weight Section
              SingleChildScrollView(
                child: Column(
                  children: [
                    buildMealSection(
                      context,
                      "First meal : Breakfast",
                      [
                        'Boiled\nEgg White       3                  51            10.8      0.6     03',
                        'Boiled Egg     2 Eggs       140             12         2       10',
                        'peanute \n Butter            20 g            117           4.73     4.30    10',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Second meal : Snack",
                      [
                        'Almond           40 g        230             8.48     8.66   19.8',
                        'Medium\nSized Apple   150g       150               0         19.5      0 ',
                        'Multivitamin\nSupplement  1 Table      0                 0            0         0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Thired meal : Breakfast",
                      [
                        'Chicken\n breast             200g         242           48           0       3.6',
                        'Basmati\nRice                 50g          174            3.6        38.5    0.4',
                        'Sweet\nPotato              75g         64.5           1.2        15    0.075',
                        '         Medium-sized salad tomatoes with cucumbers \n                                    with a little olive oil ',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fourth meal : Pre work out Snack",
                      [
                        'Banana           100 g           89          1.1          23     0.3',
                        'Coffee             1                  2             0             0       0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fifth meal : Post Workout",
                      [
                        'Sweet\nPotato             150g         129          2.4           30    0.15',
                        'Basmati\nRice                 100g          348         7.2            77    0.8',
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
                          'Total                1388.5           100          218.6       45.13',
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
                        'Coffee             1                  2             0             0       0',
                        '     ',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Second meal : Snack",
                      [
                        'Boiled\nEgg White       2                  34             7.2      0.2      0',
                        'Qats                50g              173.5         6        30       3.5',
                        'Boiled Egg     2 Eggs       140             12         2       10',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Thired meal : Breakfast",
                      [
                        'Chicken\n breast             200g         242           48           0       3.6',
                        'Sweet\nPotato             75g            64.5         1.2         15   0.075',
                        ' ',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fourth meal : Pre work out Snack",
                      [
                        'Banana           100 g           89          1.1          23     0.3',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Fifth meal : Post Workout",
                      [
                        'canned Tuna \n         In Oil       100g          200            24         0      11',
                        'Basmati\nRice                  50g            174            3.6      38.5   0.4',
                        '     Medium-sized salad tomatoes with cucumbers \n                           with a little olive oil ',
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
                          'Total                 1121            103.1       108.7         28.9',
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
                style: TextStyle(color: Colors.white, fontSize: 17),
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
          _buildTab('Loss Weight'),
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
    this.fontSize = 17,
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
