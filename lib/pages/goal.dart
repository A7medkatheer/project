// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/height.dart';
import 'package:flutter_application_1/pages/in_body.dart';


class Goal extends StatefulWidget {
  const Goal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AgePickerState createState() => _AgePickerState();
}

class _AgePickerState extends State<Goal> {
  int selectedAge = 1; // Default age

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/assets/images/Goal.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.all(70.0),
            child: Text(
              '     WHAT\'S YOUR GOAL?',
              style: TextStyle(fontSize: 23, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 110.0),
            child: Text(
              '             THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 420,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(66),
                ),
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 80),
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "           Gain weight ",
                        hintStyle: TextStyle(color: Colors.white, fontSize: 24),
                        border: InputBorder.none),
                  ),
                ),
              ),
              const Divider(
                thickness: 3,
                color: Color(0xffD0FD3E),
                indent: 78,
                endIndent: 50,
              ),
              // Divider(
              //   thickness: 2,
              //   color: Color(0xffD0FD3E),
              // )
            ],
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  HeightPicker()),
                    );
                  },
                  child: const Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color(0xffD0FD3E),
                    size: 60,
                  ),
                ),
                const SizedBox(
                  width: 180,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Add your logic for the Skip button
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffD0FD3E)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const InBody()),
                      );
                    },
                    child: const Text(
                      " Next > ",
                      style: TextStyle(fontSize: 24, color: Colors.black),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
