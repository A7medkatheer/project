// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/workout_category.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'in_body.dart';
import 'weight.dart';

class HeightPicker extends StatefulWidget {
  final String gender;
  final String weight;
  final String age;
  const HeightPicker(
      {super.key,
      required this.gender,
      required this.weight,
      required this.age});

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
            child: SizedBox(
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
                          style: const TextStyle(
                              fontSize: 32, color: Colors.white),
                        ),
                        const Center(
                          child: SizedBox(
                            width: 100,
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
                    Navigator.pop(context);
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
                        WidgetStateProperty.all(const Color(0xffD0FD3E)),
                    padding: WidgetStateProperty.all(const EdgeInsets.symmetric(
                        horizontal: 25, vertical: 10)),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: BlocConsumer<UserCubit, UserState>(
                    listener: (context, state) {
                      if (state is InBodyFailure) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(state.errMessage),
                          ),
                        );
                      } else if (state is InBodySuccess) {
                        context.read<UserCubit>().mBodyData();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WorkoutCategory(),
                          ),
                        );
                        context.read<UserCubit>().getUser();
                      }
                    },
                    builder: (context, state) {
                      return state is InBodyLoading
                          ? const CircularProgressIndicator()
                          : GestureDetector(
                              onTap: () {
                                print(
                                    'Gender: ${widget.gender},\n Age: ${widget.age},\n Weight: ${widget.weight}, \n Height: $selectedHeight');
                                context.read<UserCubit>().inBody(
                                    gender: widget.gender,
                                    userId: userId,
                                    height: selectedHeight.toString(),
                                    weight: widget.weight,
                                    age: widget.age);
                              },
                              child: const Text(
                                " Next > ",
                                style: TextStyle(
                                    fontSize: 24, color: Colors.black),
                              ),
                            );
                    },
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
