import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/workout_category.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_application_1/private/home_private.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/home.dart';

class InBody extends StatefulWidget {
  const InBody({super.key});

  @override
  State<InBody> createState() => _MyWidgetState();
}

final GlobalKey<FormState> formKey = GlobalKey<FormState>();
final TextEditingController weightController = TextEditingController();
final TextEditingController fatController = TextEditingController();
final TextEditingController muscleController = TextEditingController();
final TextEditingController bmrController = TextEditingController();
final TextEditingController ageController = TextEditingController();
final TextEditingController heightController = TextEditingController();
final TextEditingController waterController = TextEditingController();
var userId = CacheHelper().getData(key: ApiKey.userId);

class _MyWidgetState extends State<InBody> {
  String selectedGender = "Male";

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
                    MaterialPageRoute(
                        builder: (context) => const HomePrivate()),
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
        body: BlocConsumer<UserCubit, UserState>(
          listener: (context, state) {
            if (state is InBodySuccess) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const WorkoutCategory()),
              );
              context.read<UserCubit>().mBodyData();
              context.read<UserCubit>().getUser();
            } else if (state is InBodyFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.errMessage),
                ),
              );
            }
          },
          builder: (context, state) {
            return Form(
              key: formKey,
              child: Row(
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: DropdownButtonFormField<String>(
                                value: (selectedGender == 'Male' ||
                                        selectedGender == 'Female')
                                    ? selectedGender
                                    : null,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    hintText: "Enter your Age ",
                                    hintStyle: TextStyle(color: Colors.black38),
                                    border: InputBorder.none),
                                controller: ageController,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              child: TextFormField(
                                // keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                    hintText: "Enter your Height ",
                                    hintStyle: TextStyle(color: Colors.black38),
                                    border: InputBorder.none),
                                controller: heightController,
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
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter percentage Water ",
                                    hintStyle: TextStyle(
                                        color: Colors.black38, fontSize: 14),
                                    border: InputBorder.none),
                                controller: waterController,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter your weight ",
                                    hintStyle: TextStyle(color: Colors.black38),
                                    border: InputBorder.none),
                                controller: weightController,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter percentage Fat ",
                                    hintStyle: TextStyle(color: Colors.black38),
                                    border: InputBorder.none),
                                controller: fatController,
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
                              padding: const EdgeInsets.only(
                                  top: 5, left: 27, bottom: 5),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter Your Muscle ",
                                    hintStyle: TextStyle(
                                        color: Colors.black38, fontSize: 14),
                                    border: InputBorder.none),
                                controller: muscleController,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 26),
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    hintText: "Enter your BMR ",
                                    hintStyle: TextStyle(color: Colors.black38),
                                    border: InputBorder.none),
                                controller: bmrController,
                              ),
                            ),
                          ],
                        ),
                      ),
                      //! bottom
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: WidgetStateProperty.all(
                                  const Color(0xffD0FD3E)),
                              padding: WidgetStateProperty.all(
                                  const EdgeInsets.symmetric(
                                      horizontal: 25, vertical: 10)),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(13))),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                state is InBodyLoading
                                    ? const CircularProgressIndicator()
                                    : GestureDetector(
                                        onTap: () {
                                          context.read<UserCubit>().inBody(
                                              gender: selectedGender,
                                              userId: userId,
                                              height: heightController.text,
                                              weight: weightController.text,
                                              age: ageController.text,
                                              fat: fatController.text,
                                              muscle: muscleController.text,
                                              water: waterController.text,
                                              bmr: bmrController.text);
                                        },
                                        child: const Text(
                                          " Click Here ",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.black),
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
            );
          },
        ),
      ),
    );
  }
}
