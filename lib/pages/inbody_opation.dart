// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/onBoardingScreens/On_Boarding_Screen2.dart';
import 'package:flutter_application_1/pages/access.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/gender.dart';
import 'package:flutter_application_1/pages/in_body.dart';
import 'package:flutter_application_1/payment/plan.dart';
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Plan()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(const Color(0xffD0FD3E)),
                        padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                                horizontal: 100, vertical: 15)),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                      ),
                      child: const Text(
                        "You have inbody",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                    ),
                    const SizedBox(
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
                              WidgetStateProperty.all(const Color(0xffD0FD3E)),
                          padding: WidgetStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 70, vertical: 15)),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                        ),
                        child: const Text(
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
