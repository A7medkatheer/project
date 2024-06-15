// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/age.dart';
import 'package:flutter_application_1/pages/core/login.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  bool isMaleSelected = false;
  bool isFemaleSelected = false;
  String backgroundImage =
      'assets/assets/images/Gender.jpg'; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(backgroundImage),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'TELL US ABOUT YOURSELF!',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  '         TO GIVE YOU A BETTER EXPERIENCE WE NEED \n                            TO KNOW YOUR GENDER',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMaleSelected = true;
                      isFemaleSelected = false;
                      backgroundImage = 'assets/assets/images/Gender.jpg';
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isMaleSelected ? const Color(0xffD0FD3E) : Colors.grey,
                    ),
                    child: const Center(
                      child: Text(
                        'Male',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isMaleSelected = false;
                      isFemaleSelected = true;
                      backgroundImage = 'assets/assets/images/girl2.png';
                    });
                  },
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isFemaleSelected ? const Color(0xffD0FD3E) : Colors.grey,
                    ),
                    child: const Center(
                      child: Text(
                        'Female',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 280,
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
                            MaterialPageRoute(builder: (context) => const Login()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Color(0xffD0FD3E),
                          size: 60,
                        ),
                      ),
                      const SizedBox(
                        width: 210,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Add your logic for the Skip button
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(const Color(0xffD0FD3E)),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  const Age()),
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
          ),
        ),
      ),
    );
  }
}
