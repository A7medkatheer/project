import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../core/home.dart';
import 'creatine_descrpation.dart';
import 'multivitamin.dart';
import 'opti_men.dart';
import 'protein_descrpation.dart';
import 'vitamin_nation.dart';
import 'zink.dart';

class SupplementScreen extends StatelessWidget {
  const SupplementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Icon(
            Icons.arrow_circle_left_outlined,
            color: Color(0xffD0FD3E),
            size: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'The Most Popular Supplements',
                    style: TextStyle(fontSize: 24, color: Color(0xffD0FD3E)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProteinDescrpation()),
                  );
                },
                child: Row(
                  children: [
                    Text(
                      'Protein',
                      style: TextStyle(fontSize: 24, color: Color(0xffD0FD3E)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildItemContainer(
                      'assets/assets/images/Iso_add.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/mass_tech.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/mass_geiner.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/iso100.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/whey_protein.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CreatineDescrpation()),
                      );
                    },
                    child: Text(
                      'Creatien',
                      style: TextStyle(fontSize: 24, color: Color(0xffD0FD3E)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _buildItemContainer(
                      'assets/assets/images/gold3.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/cre_add.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/platinum.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/mp.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/dorian.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/bad_ass.png',
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    _buildItemContainer(
                      'assets/assets/images/pure.png',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    'Vitamins',
                    style: TextStyle(fontSize: 24, color: Color(0xffD0FD3E)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 240,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Zink()),
                        );
                      },
                      child: _buildItemContainer(
                        'assets/assets/images/zinc.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Multivitamin()),
                        );
                      },
                      child: _buildItemContainer(
                        'assets/assets/images/multivitamin.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OptiMen()),
                        );
                      },
                      child: _buildItemContainer(
                        'assets/assets/images/opti_men.png',
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VitaminNation()),
                        );
                      },
                      child: _buildItemContainer(
                        'assets/assets/images/vitamin_nation.png',
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottom_tab_bar(),
    );
  }

  Widget _buildItemContainer(
    String image,
  ) {
    return Container(
      width: 189,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            width: 180,
            height: 226,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
