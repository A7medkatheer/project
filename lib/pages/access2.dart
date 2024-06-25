import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/gender.dart';
import 'package:flutter_application_1/payment/plan.dart';

import '../core/home.dart';
import '../private/home_private.dart';

class Access2 extends StatelessWidget {
  const Access2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 400,
          ),
          Text(
            '     To Use This Feature, Please \n Subscribe To Tje Private System',
            style: TextStyle(color: Color(0xffD0FD3E), fontSize: 24),
          ),
          SizedBox(
            height: 300,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffD0FD3E),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 174,
                  height: 63,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()),
                        );
                      },
                      child: const Text(
                        '      Cancel',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xffD0FD3E),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: 174,
                  height: 63,
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const Plan()),
                        );
                      },
                      child: const Text(
                        '         Plan',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
