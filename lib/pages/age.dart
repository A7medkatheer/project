// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'gender.dart';
import 'weight.dart';


class Age extends StatefulWidget {
  const Age({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AgePickerState createState() => _AgePickerState();
}

class _AgePickerState extends State<Age> {
  int selectedAge = 1; // Default age

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/assets/images/Age.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.all(70.0),
            child: Text(
              'HOW OLD ARE YOU ?',
              style: TextStyle(fontSize: 28, color: Colors.white),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 110.0),
            child: Text(
              '        THIS HELPS US CREATE YOUR PERSONALIZED PLAN',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Center(
            child: SizedBox(
              height: 300,
              child: ListWheelScrollView(
                itemExtent: 60,
                diameterRatio: 1.5,
                physics: const FixedExtentScrollPhysics(),
                children: List.generate(
                  100, // Number of ages to display
                  (index) {
                    final age = index + 1;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          age.toString(),
                          style: const TextStyle(fontSize: 35, color: Colors.white),
                        ),
                        const Center(
                          child: SizedBox(
                            width: 150,
                            child: Divider(
                              color: Color(0xffD0FD3E),
                              height: 5,
                              thickness: 2,
                              indent: 2,
                              endIndent: 2,
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
                onSelectedItemChanged: (index) {
                  setState(() {
                    selectedAge = index + 1;
                  });
                },
              ),
            ),
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
                      MaterialPageRoute(
                          builder: (context) => const GenderSelection()),
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
                        MaterialPageRoute(builder: (context) => Weight()),
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
