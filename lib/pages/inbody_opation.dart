// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/onBoardingScreens/On_Boarding_Screen2.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/gender.dart';
import 'package:flutter_application_1/pages/in_body.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class InbodyOpation extends StatefulWidget {
  const InbodyOpation({super.key});

  @override
  _InbodyOpationState createState() => _InbodyOpationState();
}

class _InbodyOpationState extends State<InbodyOpation> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background image
            Positioned.fill(
              child: Image.asset(
                'assets/assets/images/inbody_opation.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 150),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => InBody()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Color(0xffD0FD3E)),
                        padding: MaterialStateProperty.all(EdgeInsets.symmetric(
                            horizontal: 100, vertical: 15)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                      ),
                      child: Text(
                        "You have inbody",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GenderSelection()),
                        );
                      },
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => GenderSelection()),
                          );
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xffD0FD3E)),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 70, vertical: 15)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                        ),
                        child: Text(
                          "You don't have inbody",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
