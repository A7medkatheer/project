import 'package:flutter/material.dart';
import '../../constant/constant.dart';

class FoodBulkingAndDryingUp2 extends StatelessWidget {
  const FoodBulkingAndDryingUp2({super.key});

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
                        'Banana           100 g           89          1.1          23     0.3',
                        'Oats                110 g           38.17    13.2      64.9    7.59',
                        'Peanut            20g             113.3      5.2        3.2      9.8 ',
                        'Dates              3                    70          0.6      18.7      0.1',
                        'Boiled Egg     2 Eggs       140             12         2       10',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Second meal : Snack",
                      [
                        'Peanut            20g             113.3      5.2        3.2      9.8 ',
                        'Medium\nSized Apple   150g            150          0         19.5      0 ',
                        'Multivitamin\nSupplement  1 Table         0              0            0         0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Thired meal : Breakfast",
                      [
                        'Sardine            250g         520         62.5           0     27.5',
                        'Sweet\nPotato             200g         172          3.2           40     0.3',
                        'Cookwd\nLentils            200g         232           18           40     0.8',
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
                          'Total                2519.4           190.1       331.9         81    ',
                    ),
                    const Rate_Us(),
                    const bottom_tab_bar(),
                  ],
                ),
              ),
              // !Drying Section
              SingleChildScrollView(
                child: Column(
                  children: [
                    buildMealSection(
                      context,
                      "First meal : Breakfast",
                      [
                        'Milk Cream     100 g         34           3.37      4.96   0.08',
                        'Boiled\nEgg White          4               68            14.4      0.8      0',
                        'Oats                100 g          347            12        60       7',
                        'Cattage\nCheese           100g           98.5            11       3.4    1.2',
                        '      Preparation Method : Mix Oats With Walnuts \n   And Protein, Then add Water And Stir The Mixture',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Second meal : Snack",
                      [
                        'Banana           100 g           89          1.1          23     0.3',
                        'Walnuts           30g           196        4.56       4.08 19.56 ',
                        'Boiled Egg     1 Eggs       140             12         2       10',
                        'Multivitamin\nSupplement  1 Table      0                 0            0         0',
                      ],
                    ),
                    buildMealSection(
                      context,
                      "Thired meal : Breakfast",
                      [
                        'Tune              100g           198           29.13      0     8.21',
                        'Sweet\nPotato             150g         129          2.4           30    0.15',
                        '      Medium-sized salad tomatoes with cucumbers \n                            with a little olive oil ',
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
                        'Chicken\n breast             200g         242           48           0       3.6',
                        'Sweet\nPotato             150g         129          2.4           30    0.15',
                        '       Medium-sized salad tomatoes with cucumbers \n                         with a little olive oil ',
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
