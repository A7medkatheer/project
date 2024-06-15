import 'package:flutter/material.dart';

import '../core/home.dart';

class InBody extends StatefulWidget {
  const InBody({super.key});

  @override
  State<InBody> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InBody> {
 late String selectedGender;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Row(
            children: [
              const Text(
                'Enter Your Information.......',
                style: TextStyle(color: Color(0xffD0FD3E)),
              ),
              const SizedBox(
                width: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  );
                },
                child: const Text(
                  'Skip',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
        body: Row(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                // Gender Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'GENDER                     ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DropdownButtonFormField<String>(
                          value: selectedGender,
                          items: ['Male', 'Female'].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                              
                            );
                          }).toList(),
                          hint: const Text(
                            "Select Gender",
                            style: TextStyle(color: Colors.black38),
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              selectedGender = newValue!;
                            });
                          },
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // Age Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'AGE                             ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter your Age ",
                              hintStyle: TextStyle(color: Colors.black38),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'HEIGHT (Required)    ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter your Height ",
                              hintStyle: TextStyle(color: Colors.black38),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'water %                         ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.all(10),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter percentage Water ",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 14),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            //! colum 2
            Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'WEIGHT (Required)',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter your weight ",
                              hintStyle: TextStyle(color: Colors.black38),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'FAT% (If Available)',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter percentage Fat ",
                              hintStyle: TextStyle(color: Colors.black38),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'MUSCLE                 ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.only(top: 5, left: 27, bottom: 5),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter Your Muscle ",
                              hintStyle: TextStyle(
                                  color: Colors.black38, fontSize: 14),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'BMR (_kcal)                ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        width: 179,
                        height: 40,
                        padding: const EdgeInsets.symmetric(horizontal: 26),
                        child: const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "Enter your BMR ",
                              hintStyle: TextStyle(color: Colors.black38),
                              border: InputBorder.none),
                        ),
                      ),
                    ],
                  ),
                ),
                //! bottom
                const SizedBox(
                  height: 300,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(const Color(0xffD0FD3E)),
                        padding: MaterialStateProperty.all(
                            const EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13))),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomeScreen()),
                              );
                            },
                            child: const Text(
                              " Click Here ",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
