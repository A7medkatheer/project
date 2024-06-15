// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/home.dart';
// import 'package:ui_screens/core/home.dart';

class CustomTargetPage extends StatelessWidget {
  final String exerciseName;
  // final String exerciseImage;
  final String Gifimage;

  const CustomTargetPage({super.key, required this.exerciseName, required this.Gifimage});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            exerciseName,
            style: const TextStyle(color: Colors.black, fontSize: 28),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffD0FD3E),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const HomeScreen())));
            },
          ),
        ],
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: Image.asset(
                Gifimage,
                width: 334,
                height: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const HomeScreen()))); // url video
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xffD0FD3E),
                ),
                width: 314,
                height: 64,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.ondemand_video_outlined,
                        size: 44,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Explanatory Video',
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Target Muscle',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Pectoralis Major Muscle',
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Synergistic Muscles',
              style: TextStyle(fontSize: 32, color: Colors.white),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Chest Muscle : Primary Impact\n              Triceps Muscl \n         Front Deltoid Muscles',
              style: TextStyle(fontSize: 24, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
