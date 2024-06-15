// ignore_for_file: file_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class OnBoardingScreen3 extends StatefulWidget {
  const OnBoardingScreen3({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<OnBoardingScreen3> {
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
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/assets/images/Rectangle .png',
                          height: 540,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 530,
                              ),
                              const SizedBox(height: 30),
                              const Text(
                                '            ACTION IS THE  \n      KEY TO ALL SUCCESS ',
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
                                height: 40,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 230,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          WidgetStateProperty.all(
                                              const Color(0xffD0FD3E)),
                                      padding: WidgetStateProperty.all(
                                          const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 10)),
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
                                        " Start Now > ",
                                        style: TextStyle(
                                            fontSize: 24, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ],
                              )
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
