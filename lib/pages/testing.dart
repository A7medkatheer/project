// // import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/core/workout_category.dart';
// // import 'package:flutter_application_1/pages/cache/cache_helper.dart';
// // import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
// // import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
// // import 'package:flutter_bloc/flutter_bloc.dart';

// // import '../core/home.dart';
// // import '../private/food_bulking/bulking_and_drying_level_1.dart';
// // import '../private/food_bulking/bulking_and_drying_level_2.dart';

// // class InBody2 extends StatefulWidget {
// //   const InBody2({super.key});

// //   @override
// //   State<InBody2> createState() => _MyWidgetState();
// // }

// // final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// // final TextEditingController weightController = TextEditingController();
// // final TextEditingController fatController = TextEditingController();
// // final TextEditingController muscleController = TextEditingController();
// // final TextEditingController bmrController = TextEditingController();
// // final TextEditingController ageController = TextEditingController();
// // final TextEditingController heightController = TextEditingController();
// // final TextEditingController waterController = TextEditingController();
// // var userId = CacheHelper().getData(key: ApiKey.userId);

// // class _MyWidgetState extends State<InBody2> {
// //   String selectedGender = "Male";

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: Scaffold(
// //         backgroundColor: Colors.black,
// //         appBar: AppBar(
// //           backgroundColor: Colors.black,
// //           title: Row(
// //             children: [
// //               const Text(
// //                 'Enter Your Information.......',
// //                 style: TextStyle(color: Color(0xffD0FD3E)),
// //               ),
// //               const SizedBox(
// //                 width: 20,
// //               ),
// //               GestureDetector(
// //                 onTap: () {
// //                   Navigator.push(
// //                     context,
// //                     MaterialPageRoute(builder: (context) => const HomeScreen()),
// //                   );
// //                 },
// //                 child: const Text(
// //                   'Skip',
// //                   style: TextStyle(color: Colors.white),
// //                 ),
// //               )
// //             ],
// //           ),
// //         ),
// //         body: BlocConsumer<UserCubit, UserState>(
// //           listener: (context, state) {
// //             if (state is InBodySuccess) {
// //               Navigator.push(
// //                 context,
// //                 MaterialPageRoute(
// //                     builder: (context) => const WorkoutCategory()),
// //               );
// //               context.read<UserCubit>().mBodyData();
// //               context.read<UserCubit>().getUser();
// //             } else if (state is InBodyFailure) {
// //               ScaffoldMessenger.of(context).showSnackBar(
// //                 SnackBar(
// //                   content: Text(state.errMessage),
// //                 ),
// //               );
// //             }
// //           },
// //           builder: (context, state) {
// //             return Form(
// //               key: formKey,
// //               child: Row(
// //                 children: [
// //                   Column(
// //                     children: [
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       // Gender Row
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'GENDER                     ',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding:
// //                                   const EdgeInsets.symmetric(horizontal: 16),
// //                               child: DropdownButtonFormField<String>(
// //                                 value: (selectedGender == 'Male' ||
// //                                         selectedGender == 'Female')
// //                                     ? selectedGender
// //                                     : null,
// //                                 items: ['Male', 'Female'].map((String value) {
// //                                   return DropdownMenuItem<String>(
// //                                     value: value,
// //                                     child: Text(value),
// //                                   );
// //                                 }).toList(),
// //                                 hint: const Text(
// //                                   "Select Gender",
// //                                   style: TextStyle(color: Colors.black38),
// //                                 ),
// //                                 onChanged: (newValue) {
// //                                   setState(() {
// //                                     selectedGender = newValue!;
// //                                   });
// //                                 },
// //                                 decoration: const InputDecoration(
// //                                   border: InputBorder.none,
// //                                 ),
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       // Age Row
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'AGE                             ',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding:
// //                                   const EdgeInsets.symmetric(horizontal: 26),
// //                               child: TextFormField(
// //                                 keyboardType: TextInputType.number,
// //                                 decoration: const InputDecoration(
// //                                     hintText: "Enter your Age ",
// //                                     hintStyle: TextStyle(color: Colors.black38),
// //                                     border: InputBorder.none),
// //                                 controller: ageController,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'HEIGHT (Required)    ',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding:
// //                                   const EdgeInsets.symmetric(horizontal: 26),
// //                               child: TextFormField(
// //                                 // keyboardType: TextInputType.number,
// //                                 decoration: const InputDecoration(
// //                                     hintText: "Enter your Height ",
// //                                     hintStyle: TextStyle(color: Colors.black38),
// //                                     border: InputBorder.none),
// //                                 controller: heightController,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'water %                         ',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding: const EdgeInsets.all(10),
// //                               child: TextFormField(
// //                                 decoration: const InputDecoration(
// //                                     hintText: "Enter percentage Water ",
// //                                     hintStyle: TextStyle(
// //                                         color: Colors.black38, fontSize: 14),
// //                                     border: InputBorder.none),
// //                                 controller: waterController,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                     ],
// //                   ),

// //                   //! Column 2
// //                   Column(
// //                     children: [
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'WEIGHT (Required)',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding:
// //                                   const EdgeInsets.symmetric(horizontal: 26),
// //                               child: TextFormField(
// //                                 decoration: const InputDecoration(
// //                                     hintText: "Enter your weight ",
// //                                     hintStyle: TextStyle(color: Colors.black38),
// //                                     border: InputBorder.none),
// //                                 controller: weightController,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'FAT% (If Available)',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding:
// //                                   const EdgeInsets.symmetric(horizontal: 26),
// //                               child: TextFormField(
// //                                 decoration: const InputDecoration(
// //                                     hintText: "Enter percentage Fat ",
// //                                     hintStyle: TextStyle(color: Colors.black38),
// //                                     border: InputBorder.none),
// //                                 controller: fatController,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'MUSCLE                 ',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding: const EdgeInsets.only(
// //                                   top: 5, left: 27, bottom: 5),
// //                               child: TextFormField(
// //                                 decoration: const InputDecoration(
// //                                     hintText: "Enter Your Muscle ",
// //                                     hintStyle: TextStyle(
// //                                         color: Colors.black38, fontSize: 14),
// //                                     border: InputBorder.none),
// //                                 controller: muscleController,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       const SizedBox(
// //                         height: 10,
// //                       ),
// //                       const Row(
// //                         mainAxisAlignment: MainAxisAlignment.start,
// //                         children: [
// //                           Text(
// //                             'BMR (_kcal)                ',
// //                             style: TextStyle(color: Colors.white, fontSize: 18),
// //                           ),
// //                         ],
// //                       ),
// //                       Padding(
// //                         padding: const EdgeInsets.all(12.0),
// //                         child: Row(
// //                           children: [
// //                             Container(
// //                               decoration: BoxDecoration(
// //                                 color: Colors.white,
// //                                 borderRadius: BorderRadius.circular(10),
// //                               ),
// //                               width: 179,
// //                               height: 40,
// //                               padding:
// //                                   const EdgeInsets.symmetric(horizontal: 26),
// //                               child: TextFormField(
// //                                 decoration: const InputDecoration(
// //                                     hintText: "Enter your BMR ",
// //                                     hintStyle: TextStyle(color: Colors.black38),
// //                                     border: InputBorder.none),
// //                                 controller: bmrController,
// //                               ),
// //                             ),
// //                           ],
// //                         ),
// //                       ),
// //                       //! Navigation Buttons
// //                       const SizedBox(
// //                         height: 20,
// //                       ),
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.spaceAround,
// //                         children: [
// //                           ElevatedButton(
// //                             onPressed: () {
// //                               Navigator.push(
// //                                 context,
// //                                 MaterialPageRoute(
// //                                   builder: (context) =>
// //                                       FoodBulkingAndDryingUp1(),
// //                                 ),
// //                               );
// //                             },
// //                             child: Text('Bulking Plan'),
// //                           ),
// //                           ElevatedButton(
// //                             onPressed: () {
// //                               Navigator.push(
// //                                 context,
// //                                 MaterialPageRoute(
// //                                   builder: (context) =>
// //                                       FoodBulkingAndDryingUp2(),
// //                                 ),
// //                               );
// //                             },
// //                             child: Text('Drying Plan'),
// //                           ),
// //                         ],
// //                       ),
// //                       const SizedBox(
// //                         height: 20,
// //                       ),
// //                       //! Submit Button
// //                       Row(
// //                         mainAxisAlignment: MainAxisAlignment.center,
// //                         children: [
// //                           ElevatedButton(
// //                             onPressed: () {
// //                               // Validate the form
// //                               if (formKey.currentState!.validate()) {
// //                                 // Perform in-body calculation
// //                                 double weight =
// //                                     double.tryParse(weightController.text) ??
// //                                         0.0;
// //                                 double fatPercentage =
// //                                     double.tryParse(fatController.text) ?? 0.0;
// //                                 double muscle =
// //                                     double.tryParse(muscleController.text) ??
// //                                         0.0;
// //                                 double bmr =
// //                                     double.tryParse(bmrController.text) ?? 0.0;
// //                                 double age =
// //                                     double.tryParse(ageController.text) ?? 0.0;
// //                                 double height =
// //                                     double.tryParse(heightController.text) ??
// //                                         0.0;
// //                                 double waterPercentage =
// //                                     double.tryParse(waterController.text) ??
// //                                         0.0;

// //                                 // Perform the in-body API call
// //                                 context.read<UserCubit>().inBody(
// //                                       gender: selectedGender,
// //                                       userId: userId,
// //                                       height: height.toString(),
// //                                       weight: weight.toString(),
// //                                       age: age.toString(),
// //                                       fat: fatPercentage.toString(),
// //                                       muscle: muscle.toString(),
// //                                       water: waterPercentage.toString(),
// //                                       bmr: bmr.toString(),
// //                                     );
// //                               }
// //                             },
// //                             style: ButtonStyle(
// //                               backgroundColor: MaterialStateProperty.all<Color>(
// //                                   Colors.green),
// //                             ),
// //                             child: Padding(
// //                               padding: const EdgeInsets.symmetric(
// //                                   vertical: 10, horizontal: 20),
// //                               child: Text(
// //                                 'Submit',
// //                                 style: TextStyle(fontSize: 18),
// //                               ),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ],
// //                   ),
// //                 ],
// //               ),
// //             );
// //           },
// //         ),
// //       ),
// //     );
// //   }
// // }


// ////////////////////////////



// import 'package:flutter/material.dart';
// import 'dart:math';

// import 'package:flutter_application_1/core/home.dart';
// import 'package:flutter_application_1/pages/cache/cache_helper.dart';
// import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
// import 'package:flutter_application_1/pages/weight.dart';
// import 'package:flutter_application_1/private/home_private.dart';

// class Welcome extends StatefulWidget {
//   const Welcome({super.key});

//   @override
//   State<Welcome> createState() => _IntroductionState();
// }

// class _IntroductionState extends State<Welcome> {
//   final int weight = CacheHelper().getData(key: ApiKey.weight);
//   final int height = CacheHelper().getData(key: ApiKey.height);
//   final int age = CacheHelper().getData(key: ApiKey.age);
//   final String activityLevel = 'moderately active'; // Activity level
//   var image = CacheHelper().getData(key: ApiKey.profilePic);
//   var name = CacheHelper().getData(key: ApiKey.name);
//   double calculateBMR() {
//     return 88.362 +
//         (13.397 * weight.toDouble()) +
//         (4.799 * height.toDouble()) -
//         (5.677 * age.toDouble());
//   }

//   double calculateTDEE(double bmr) {
//     // Activity factor mapping
//     Map<String, double> activityFactors = {
//       'sedentary': 1.2,
//       'lightly active': 1.375,
//       'moderately active': 1.55,
//       'very active': 1.725,
//       'super active': 1.9,
//     };
//     return bmr * activityFactors[activityLevel]!;
//   }

//   @override
//   Widget build(BuildContext context) {
//     double bmr = calculateBMR();
//     double tdee = calculateTDEE(bmr);
    

//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SafeArea(
//               child: Padding(
//                 padding: const EdgeInsets.all(12.0),
//                 child: Row(
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: const Color(0xffD0FD3E),
//                       radius: 30,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.white,
//                         radius: 28,
//                         backgroundImage: NetworkImage(image),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Good Morning ',
//                           style: TextStyle(
//                               color: Colors.white.withOpacity(0.7),
//                               fontSize: 18),
//                         ),
//                         Text(
//                           name,
//                           style: const TextStyle(
//                               color: Colors.white, fontSize: 22),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             const Text(
//               'Welcome, This App Recommends Your Body \nBulking Up To Gain Weight',
//               textAlign: TextAlign.center,
//               style: TextStyle(color: Color(0xffD0FD3E), fontSize: 19),
//             ),
//             const SizedBox(
//               height: 30,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 InfoCard(label: 'Height', value: '${height.toInt()} cm'),
//                 InfoCard(label: 'Weight', value: '${weight.toInt()} kg'),
//                 InfoCard(label: 'Age', value: '$age years'),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                 color: const Color(0xff4D4D4D),
//                 borderRadius: BorderRadius.circular(15),
//               ),
//               width: 370,
//               height: 252,
//               child: Column(
//                 children: [
//                   const Padding(
//                     padding: EdgeInsets.all(12.0),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           'Calories',
//                           style:
//                               TextStyle(color: Color(0xffD0FD3E), fontSize: 22),
//                         ),
//                         Icon(
//                           Icons.local_fire_department_outlined,
//                           color: Color(0xffD0FD3E),
//                         )
//                       ],
//                     ),
//                   ),
//                   Expanded(
//                     child: Center(
//                       child: CaloriesWidget(calories: tdee),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Padding(
//               padding: const EdgeInsets.only(left: 20.0),
//               child: Row(
//                 children: [
//                   Container(
//                     decoration: BoxDecoration(
//                       color: const Color(0xff4D4D4D),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     width: 280,
//                     height: 238,
//                     child: const Column(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Row(
//                             children: [
//                               ProgressIndicatorWithLabel(
//                                 percentage: 30,
//                                 color: Colors.green,
//                                 label: 'Diet',
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Row(
//                             children: [
//                               ProgressIndicatorWithLabel(
//                                 percentage: 50,
//                                 color: Colors.blue,
//                                 label: 'Work Out',
//                               ),
//                             ],
//                           ),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(12.0),
//                           child: Row(
//                             children: [
//                               ProgressIndicatorWithLabel(
//                                 percentage: 40,
//                                 color: Colors.red,
//                                 label: 'Focus',
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: const Color(0xffD0FD3E),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     width: 174,
//                     height: 63,
//                     child: Padding(
//                       padding: const EdgeInsets.all(14.0),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const HomeScreen()),
//                           );
//                         },
//                         child: const Text(
//                           'Go to system',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: const Color(0xffD0FD3E),
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                     width: 174,
//                     height: 63,
//                     child: Padding(
//                       padding: const EdgeInsets.all(14.0),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => const HomePrivate()),
//                           );
//                         },
//                         child: const Text(
//                           'Home Private',
//                           style: TextStyle(fontSize: 20),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// class InfoCard extends StatelessWidget {
//   final String label;
//   final String value;

//   const InfoCard({super.key, required this.label, required this.value});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: const Color(0xff4D4D4D),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       width: 100,
//       height: 70,
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(
//               value,
//               style: const TextStyle(color: Colors.white, fontSize: 15),
//             ),
//             Text(
//               label,
//               style:
//                   TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CaloriesWidget extends StatelessWidget {
//   final double calories;

//   const CaloriesWidget({super.key, required this.calories});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       width: 200,
//       height: 230,
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           CircularProgressIndicator(
//             value: calories / 3000,
//             strokeWidth: 10,
//             backgroundColor: Colors.grey,
//             valueColor: const AlwaysStoppedAnimation<Color>(Color(0xffD0FD3E)),
//           ),
//           Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 '${calories.toInt()}',
//                 style: const TextStyle(fontSize: 30, color: Color(0xffD0FD3E)),
//               ),
//               const SizedBox(
//                 height: 60,
//               ),
//               const Text(
//                 'KCal',
//                 style: TextStyle(fontSize: 20, color: Color(0xffD0FD3E)),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ProgressIndicatorWithLabel extends StatelessWidget {
//   final double percentage;
//   final Color color;
//   final String label;

//   const ProgressIndicatorWithLabel({
//     super.key,
//     required this.percentage,
//     required this.color,
//     required this.label,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Stack(
//           alignment: Alignment.center,
//           children: [
//             SizedBox(
//               width: 50,
//               height: 50,
//               child: CircularProgressIndicator(
//                 value: percentage / 100,
//                 strokeWidth: 5,
//                 backgroundColor: Colors.grey,
//                 valueColor: AlwaysStoppedAnimation<Color>(color),
//               ),
//             ),
//             Text(
//               '${percentage.toInt()}%',
//               style: const TextStyle(color: Colors.white, fontSize: 12),
//             ),
//           ],
//         ),
//         const SizedBox(width: 10),
//         Text(
//           label,
//           style: const TextStyle(color: Colors.white, fontSize: 18),
//         ),
//       ],
//     );
//   }
// }
