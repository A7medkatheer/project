// ignore_for_file: file_names, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/onBoardingScreens/On_Boarding_Screen2.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen1 extends StatefulWidget {
  const OnBoardingScreen1({super.key});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<OnBoardingScreen1> {
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            PageView.builder(
              controller: controller,
              itemCount: 3, // Replace with the number of pages you have
              itemBuilder: (BuildContext context, int index) {
                // Your page content here
                return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Image.asset(
                        'assets/assets/images/t1.jpg',
                        height: 600,
                      ),
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 500,
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                '  MEET YOUR COACH,\nSTART YOUR JOURNEY ',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 28),
                              ),
                              const SizedBox(
                                height: 120,
                              ),
                              Align(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SmoothPageIndicator(
                                      controller: controller,
                                      count:
                                          3, // Replace with the number of pages you have
                                      effect: const ExpandingDotsEffect(
                                        activeDotColor: Color(0xffD0FD3E),
                                        dotColor: Colors.grey,
                                        dotHeight: 7,
                                        dotWidth: 10,
                                      ) // You can change the effect here
                                      ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(vertical: 27),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor:
                                            WidgetStateProperty.all(
                                                const Color(0xffD0FD3E)),
                                        padding: WidgetStateProperty.all(
                                            const EdgeInsets.symmetric(
                                                horizontal: 60, vertical: 10)),
                                        shape: WidgetStateProperty.all(
                                            RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(27))),
                                      ),
                                      child: GestureDetector(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const Login()),
                                          );
                                        },
                                        child: const Text(
                                          " Skip ",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.black),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 160,
                                    ),
                                    //! NEXT
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const OnBoardingScreen2()),
                                        );
                                      },
                                      child: const Icon(
                                        Icons.arrow_circle_right_outlined,
                                        color: Color(0xffD0FD3E),
                                        size: 60,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
