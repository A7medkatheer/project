// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../constant/constant.dart';
class TopSources extends StatelessWidget {
   final int initialIndex;

  const TopSources({super.key, this.initialIndex = 0});

  
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
            initialIndex: initialIndex,

      length: 5,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50.0),
            child: AppBar(
              backgroundColor: Colors.black,
              bottom: CustomTabBar(),
            ),
          ),
          body: TabBarView(
            children: [
              //!   Protein

              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Center(
                        child: Text(
                          'In this table, we have summarizes the best and\nrichest sources of protein, along with the \naverage values and nutritional elements per \n                                  100 grams ',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '                              Calories           Protein            Carb            Fat',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Chicken breast',
                      caloriesNum: '165',
                      proteinNum: '       25',
                      carbNum: '  0',
                      fatNum: '  3.57',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Canned tuna\n      in oil',
                      caloriesNum: '            186',
                      proteinNum: '      26.5',
                      carbNum: '0',
                      fatNum: '   0',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Canned tuna\n    in Water',
                      caloriesNum: '        128',
                      proteinNum: '      23.6',
                      carbNum: '0',
                      fatNum: '2.9',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Sardines',
                      caloriesNum: '           200',
                      proteinNum: '       24',
                      carbNum: '  0',
                      fatNum: '11',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Lamb Meat',
                      caloriesNum: '      282',
                      proteinNum: '      25',
                      carbNum: '    0',
                      fatNum: '23',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Chicken \n Liver',
                      caloriesNum: '                119',
                      proteinNum: '     16.9',
                      carbNum: '0.7',
                      fatNum: '4.8',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Eggs',
                      caloriesNum: '                143',
                      proteinNum: '      12.5',
                      carbNum: '0.7',
                      fatNum: '9.9',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Peanuts',
                      caloriesNum: '           567',
                      proteinNum: '    25.8',
                      carbNum: '16.3',
                      fatNum: '49.2',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Lows-Fat\n Cheese',
                      caloriesNum: '        105',
                      proteinNum: '        15.6',
                      carbNum: ' 7.6',
                      fatNum: '   1',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Lows-Fat\n Cream',
                      caloriesNum: '         201',
                      proteinNum: '          7.8',
                      carbNum: '  8.1',
                      fatNum: '  15.2',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Yogurt\nFull-Fat',
                      caloriesNum: '         61',
                      proteinNum: '            3.4',
                      carbNum: '4.6',
                      fatNum: '   3.2',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Raw Lentil',
                      caloriesNum: '   353',
                      proteinNum: '       25.8',
                      carbNum: '  60',
                      fatNum: '     1',
                    ),
                    Divider1(),
                    Rate_Us(),
                    bottom_tab_bar(),
                  ],
                ),
              ),

              //!   Carbs
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Center(
                          child: Text(
                            'In this table, we have summarizes the best and\nrichest sources of protein, along with the \naverage values and nutritional elements per \n                                  100 grams ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            '                            Calories       Protein            Carb            Fat',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Qats',
                        caloriesNum: '               389',
                        proteinNum: '16.8',
                        carbNum: '66.2',
                        fatNum: '6.9',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Banana',
                        caloriesNum: '         89',
                        proteinNum: '   1',
                        carbNum: '      22.8',
                        fatNum: '0.3',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Sweet\nPotato',
                        caloriesNum: '          100',
                        proteinNum: '1.7',
                        carbNum: '     23.4',
                        fatNum: '0.1',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Chickpass',
                        caloriesNum: '    119',
                        proteinNum: '4.9',
                        carbNum: '    22.6',
                        fatNum: '1.1',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Corn yellow',
                        caloriesNum: '  365',
                        proteinNum: '9.4',
                        carbNum: '   47.2',
                        fatNum: '4.7',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Soybeans',
                        caloriesNum: '     336',
                        proteinNum: '13',
                        carbNum: '     72.1',
                        fatNum: '2',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Spinach',
                        caloriesNum: '         23',
                        proteinNum: '28.5',
                        carbNum: '3.6',
                        fatNum: '   0.3',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Peanuts',
                        caloriesNum: '       567',
                        proteinNum: '25.8',
                        carbNum: '16.3',
                        fatNum: '49.2',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Boiled while    \n     Rice',
                        caloriesNum: '          97',
                        proteinNum: '  2.6',
                        carbNum: '   21',
                        fatNum: '   0.1',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Lotus Seeds',
                        caloriesNum: '332',
                        proteinNum: '5.48',
                        carbNum: '64.4',
                        fatNum: '1.9',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Fresh Green  \n   Beans',
                        caloriesNum: '       127',
                        proteinNum: '  8.6',
                        carbNum: '  22.8',
                        fatNum: '0.5',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Row Lentil',
                        caloriesNum: '   353',
                        proteinNum: '25.8',
                        carbNum: '60',
                        fatNum: '    1',
                      ),
                      Divider1(),
                      Rate_Us(),
                      bottom_tab_bar(),
                    ],
                  ),
                ),
              ),
              //!   Oil

              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Center(
                        child: Text(
                          'In this table, we have summarizes the best and\nrichest sources of protein, along with the \naverage values and nutritional elements per \n                                  100 grams ',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '                             Calories         Protein         Carb          Fat',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Walnuts Oil',
                      caloriesNum: '     884',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Palm Oil',
                      caloriesNum: '          884',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Olive Oil',
                      caloriesNum: '          885',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Cocount Oil',
                      caloriesNum: '    884',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Hazeinut Oil',
                      caloriesNum: '   884',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Flaxseed Oil',
                      caloriesNum: '   884',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Almond Oil',
                      caloriesNum: '     884',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Cocoa Butter\n  (Cocoa Oil)',
                      caloriesNum: '   885',
                      proteinNum: '      0',
                      carbNum: '  0',
                      fatNum: '100',
                    ),
                    Divider1(),
                    Rate_Us(),
                    bottom_tab_bar(),
                  ],
                ),
              ),
              //! Egg
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 50.0),
                        child: Center(
                          child: Text(
                            'In this table, we have summarizes the best and\nrichest sources of protein, along with the \naverage values and nutritional elements per \n                                  100 grams ',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            '                             Calories           Protein            Carb            Fat',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Eggs\non Egg',
                        caloriesNum: '             70',
                        proteinNum: '      6',
                        carbNum: '        1',
                        fatNum: '      5',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Egg White\n One Egg',
                        caloriesNum: '         17',
                        proteinNum: '      3.6',
                        carbNum: '    0.2',
                        fatNum: '    0',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Goose Egg',
                        caloriesNum: '     185',
                        proteinNum: '    13.87',
                        carbNum: '1.3',
                        fatNum: '13.77',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Duck Eggs',
                        caloriesNum: '     185',
                        proteinNum: '   12.81',
                        carbNum: '1.45',
                        fatNum: '13.77',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Turkey Eggs',
                        caloriesNum: '  171',
                        proteinNum: '   13.68',
                        carbNum: '1.15',
                        fatNum: '11.88',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Quail Egg',
                        caloriesNum: '      158',
                        proteinNum: '    13.05',
                        carbNum: '0.41',
                        fatNum: '11.09',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Full-Fat\n milk',
                        caloriesNum: '                42',
                        proteinNum: '        3.4',
                        carbNum: '4.7',
                        fatNum: '     3.7',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Skim Milk',
                        caloriesNum: '      34',
                        proteinNum: '        3.37',
                        carbNum: '4.96',
                        fatNum: '0.08',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Cheese \n  Cream',
                        caloriesNum: '         105',
                        proteinNum: '    15.69',
                        carbNum: '7.66',
                        fatNum: '1',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Cheese \nMozzaerlla',
                        caloriesNum: '   141',
                        proteinNum: '     31.7',
                        carbNum: '   3.5',
                        fatNum: '0',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Low-Fat\nButtermilk',
                        caloriesNum: '      40',
                        proteinNum: '    3.31',
                        carbNum: '  4.79',
                        fatNum: '0.88',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Powdered\n      Milk',
                        caloriesNum: '          387',
                        proteinNum: '    34.3',
                        carbNum: '49',
                        fatNum: '   5.78',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Yogurt\nFat-Free',
                        caloriesNum: '         112',
                        proteinNum: '    3.53',
                        carbNum: '23.53',
                        fatNum: '0',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Low-Fat\nYogurt',
                        caloriesNum: '              63',
                        proteinNum: '    5.25',
                        carbNum: '7.04',
                        fatNum: '1.55',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Full-Fat\nYogurt',
                        caloriesNum: '              61',
                        proteinNum: '    3.47',
                        carbNum: '4.66',
                        fatNum: '3.25',
                      ),
                      Divider1(),
                      CustomPadding(
                        name: 'Low-Fat\nCream',
                        caloriesNum: '              201',
                        proteinNum: '    7.85',
                        carbNum: '8.13',
                        fatNum: '15.28',
                      ),
                      Divider1(),
                      Rate_Us(),
                      bottom_tab_bar(),
                    ],
                  ),
                ),
              ),
// ! Heathly Fat
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50.0),
                      child: Center(
                        child: Text(
                          'In this table, we have summarizes the best and\nrichest sources of fat, along with the \naverage values and nutritional elements per \n                                  100 grams ',
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          '                                 Calories            Protein         Carb         Fat',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Olive Oil',
                      caloriesNum: '              880',
                      proteinNum: '    0',
                      carbNum: '       0',
                      fatNum: '   99',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Avocado',
                      caloriesNum: '             160',
                      proteinNum: '    2',
                      carbNum: '      8.5',
                      fatNum: '14.6',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Flax seeds',
                      caloriesNum: '         534',
                      proteinNum: '    18.2',
                      carbNum: '28.8',
                      fatNum: '42.1',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Nuts Almonds',
                      caloriesNum: '  575',
                      proteinNum: '    21.2',
                      carbNum: '21.6',
                      fatNum: '49.4',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Chia Seeds',
                      caloriesNum: '       490',
                      proteinNum: '    15.6',
                      carbNum: '43.8',
                      fatNum: '30.7',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Sunflower \n Seed',
                      caloriesNum: '                 584',
                      proteinNum: '    20.7',
                      carbNum: ' 20',
                      fatNum: '   51.4',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'White\nWalnute',
                      caloriesNum: '            657',
                      proteinNum: '    12.5',
                      carbNum: '18.2',
                      fatNum: '64.3',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Peanuts',
                      caloriesNum: '           567',
                      proteinNum: '    25.8',
                      carbNum: ' 16.3',
                      fatNum: '49.2',
                    ),
                    Divider1(),
                    CustomPadding(
                      name: 'Nuts\n Pistachios',
                      caloriesNum: '      562',
                      proteinNum: '    20.2',
                      carbNum: '27.5',
                      fatNum: '45.3',
                    ),
                    Divider1(),
                    Rate_Us(),
                    bottom_tab_bar(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Divider1 extends StatelessWidget {
  const Divider1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      thickness: 1,
      color: Colors.white,
    );
  }
}

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(30.0);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: preferredSize.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.black, Colors.black],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TabBar(
        indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Color(0xffD0FD3E),
        ),
        tabs: [
          _buildTab('Protein'),
          _buildTab('Carb'),
          _buildTab('Oil'),
          _buildTab('Egg'),
          _buildTab('Healthy Fat'),
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

class CustomPadding extends StatelessWidget {
  final String name;
  final String caloriesNum;
  final String proteinNum;
  final String carbNum;
  final String fatNum;

  const CustomPadding({
    Key? key,
    required this.name,
    required this.caloriesNum,
    required this.proteinNum,
    required this.carbNum,
    required this.fatNum,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        children: [
          Text(
            '$name            $caloriesNum                 $proteinNum                 $carbNum              $fatNum',
            style: TextStyle(color: Colors.white, fontSize: 12),
          )
        ],
      ),
    );
  }
}
