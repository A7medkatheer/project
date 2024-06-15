// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'in_body.dart';
import 'weight.dart';


class HeightPicker extends StatefulWidget {
  const HeightPicker({super.key});

  @override
  _HeightPickerState createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  int selectedHeight = 150; // Default height in centimeters

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/assets/images/Height.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          const Padding(
            padding: EdgeInsets.all(70.0),
            child: Text(
              'WHAT\'S YOUR HEIGHT?',
              style: TextStyle(fontSize: 25, color: Colors.white),
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
            child: Container(
              height: 200,
              child: ListWheelScrollView(
                itemExtent: 80, // Increase height for each item
                diameterRatio: 1.5,
                physics: const FixedExtentScrollPhysics(),
                children: List.generate(
                  100, // Number of heights to display
                  (index) {
                    final height = 150 + index; // Starting from 150 cm
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '$height cm',
                          style: const TextStyle(fontSize: 32, color: Colors.white),
                        ),
                        Center(
                          child: Container(
                            width: 100,
                            child: const Divider(
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
                    selectedHeight = 150 + index; // Starting from 150 cm
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
                      MaterialPageRoute(builder: (context) => Weight()),
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
                  onPressed: () {},
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
