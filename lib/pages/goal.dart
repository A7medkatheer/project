// // // // // ignore_for_file: non_constant_identifier_names

// // // // import 'package:flutter/material.dart';
// // // // import 'package:flutter_application_1/core/home.dart';
// // // // // import 'package:ui_screens/core/home.dart';

// // // // class CustomTargetPage extends StatelessWidget {
// // // //   final String exerciseName;
// // // //   // final String exerciseImage;
// // // //   final String Gifimage;

// // // //   const CustomTargetPage({super.key, required this.exerciseName, required this.Gifimage});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       backgroundColor: Colors.black,
// // // //       appBar: AppBar(
// // // //         title: Center(
// // // //           child: Text(
// // // //             exerciseName,
// // // //             style: const TextStyle(color: Colors.black, fontSize: 28),
// // // //           ),
// // // //         ),
// // // //         elevation: 0,
// // // //         backgroundColor: const Color(0xffD0FD3E),
// // // //         actions: <Widget>[
// // // //           IconButton(
// // // //             icon: const Icon(
// // // //               Icons.home_outlined,
// // // //               color: Colors.black,
// // // //               size: 40,
// // // //             ),
// // // //             onPressed: () {
// // // //               Navigator.push(context,
// // // //                   MaterialPageRoute(builder: ((context) => const HomeScreen())));
// // // //             },
// // // //           ),
// // // //         ],
// // // //         centerTitle: true,
// // // //         leading: GestureDetector(
// // // //           onTap: () {
// // // //             Navigator.pop(context);
// // // //           },
// // // //           child: const Icon(
// // // //             Icons.arrow_circle_left_outlined,
// // // //             color: Colors.black,
// // // //             size: 50,
// // // //           ),
// // // //         ),
// // // //       ),
// // // //       body: Center(
// // // //         child: Column(
// // // //           children: [
// // // //             const SizedBox(
// // // //               height: 30,
// // // //             ),
// // // //             ClipRRect(
// // // //               borderRadius: BorderRadius.circular(40),
// // // //               child: Image.asset(
// // // //                 Gifimage,
// // // //                 width: 334,
// // // //                 height: 250,
// // // //                 fit: BoxFit.cover,
// // // //               ),
// // // //             ),
// // // //             const SizedBox(
// // // //               height: 30,
// // // //             ),
// // // //             GestureDetector(
// // // //               onTap: () {
// // // //                 Navigator.push(
// // // //                     context,
// // // //                     MaterialPageRoute(
// // // //                         builder: ((context) => const HomeScreen()))); // url video
// // // //               },
// // // //               child: Container(
// // // //                 decoration: BoxDecoration(
// // // //                   borderRadius: BorderRadius.circular(12),
// // // //                   color: const Color(0xffD0FD3E),
// // // //                 ),
// // // //                 width: 314,
// // // //                 height: 64,
// // // //                 child: const Padding(
// // // //                   padding: EdgeInsets.all(8.0),
// // // //                   child: Row(
// // // //                     children: [
// // // //                       Icon(
// // // //                         Icons.ondemand_video_outlined,
// // // //                         size: 44,
// // // //                       ),
// // // //                       SizedBox(
// // // //                         width: 20,
// // // //                       ),
// // // //                       Text(
// // // //                         'Explanatory Video',
// // // //                         style: TextStyle(fontSize: 24),
// // // //                       ),
// // // //                     ],
// // // //                   ),
// // // //                 ),
// // // //               ),
// // // //             ),
// // // //             const SizedBox(
// // // //               height: 25,
// // // //             ),
// // // //             const Text(
// // // //               'Target Muscle',
// // // //               style: TextStyle(fontSize: 32, color: Colors.white),
// // // //             ),
// // // //             const SizedBox(
// // // //               height: 25,
// // // //             ),
// // // //             const Text(
// // // //               'Pectoralis Major Muscle',
// // // //               style: TextStyle(fontSize: 24, color: Colors.white70),
// // // //             ),
// // // //             const SizedBox(
// // // //               height: 25,
// // // //             ),
// // // //             const Text(
// // // //               'Synergistic Muscles',
// // // //               style: TextStyle(fontSize: 32, color: Colors.white),
// // // //             ),
// // // //             const SizedBox(
// // // //               height: 25,
// // // //             ),
// // // //             const Text(
// // // //               'Chest Muscle : Primary Impact\n              Triceps Muscl \n         Front Deltoid Muscles',
// // // //               style: TextStyle(fontSize: 24, color: Colors.white70),
// // // //             ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }



// // // //////////////////////////
// // // ///
// // // ///
// // // ///


// // // import 'package:flutter/material.dart';
// // // import 'package:flutter_application_1/core/workout_category.dart';
// // // import 'package:flutter_application_1/pages/cache/cache_helper.dart';
// // // import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
// // // import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
// // // import 'package:flutter_bloc/flutter_bloc.dart';

// // // import '../core/home.dart';

// // // class InBody extends StatefulWidget {
// // //   const InBody({super.key});

// // //   @override
// // //   State<InBody> createState() => _MyWidgetState();
// // // }

// // // final GlobalKey<FormState> formKey = GlobalKey<FormState>();
// // // final TextEditingController weightController = TextEditingController();
// // // final TextEditingController fatController = TextEditingController();
// // // final TextEditingController muscleController = TextEditingController();
// // // final TextEditingController bmrController = TextEditingController();
// // // final TextEditingController ageController = TextEditingController();
// // // final TextEditingController heightController = TextEditingController();
// // // final TextEditingController waterController = TextEditingController();
// // // var userId = CacheHelper().getData(key: ApiKey.userId);

// // // class _MyWidgetState extends State<InBody> {
// // //   String selectedGender = "Male";

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return SafeArea(
// // //       child: Scaffold(
// // //         backgroundColor: Colors.black,
// // //         appBar: AppBar(
// // //           backgroundColor: Colors.black,
// // //           title: Row(
// // //             children: [
// // //               const Text(
// // //                 'Enter Your Information.......',
// // //                 style: TextStyle(color: Color(0xffD0FD3E)),
// // //               ),
// // //               const SizedBox(
// // //                 width: 20,
// // //               ),
// // //               GestureDetector(
// // //                 onTap: () {
// // //                   Navigator.push(
// // //                     context,
// // //                     MaterialPageRoute(builder: (context) => const HomeScreen()),
// // //                   );
// // //                 },
// // //                 child: const Text(
// // //                   'Skip',
// // //                   style: TextStyle(color: Colors.white),
// // //                 ),
// // //               )
// // //             ],
// // //           ),
// // //         ),
// // //         body: BlocConsumer<UserCubit, UserState>(
// // //           listener: (context, state) {
// // //             if (state is InBodySuccess) {
// // //               Navigator.push(
// // //                 context,
// // //                 MaterialPageRoute(
// // //                     builder: (context) => const WorkoutCategory()),
// // //               );
// // //               context.read<UserCubit>().mBodyData();
// // //               context.read<UserCubit>().getUser();
// // //             } else if (state is InBodyFailure) {
// // //               ScaffoldMessenger.of(context).showSnackBar(
// // //                 SnackBar(
// // //                   content: Text(state.errMessage),
// // //                 ),
// // //               );
// // //             }
// // //           },
// // //           builder: (context, state) {
// // //             return Form(
// // //               key: formKey,
// // //               child: Row(
// // //                 children: [
// // //                   Column(
// // //                     children: [
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       // Gender Row
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'GENDER                     ',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding:
// // //                                   const EdgeInsets.symmetric(horizontal: 16),
// // //                               child: DropdownButtonFormField<String>(
// // //                                 value: (selectedGender == 'Male' ||
// // //                                         selectedGender == 'Female')
// // //                                     ? selectedGender
// // //                                     : null,
// // //                                 items: ['Male', 'Female'].map((String value) {
// // //                                   return DropdownMenuItem<String>(
// // //                                     value: value,
// // //                                     child: Text(value),
// // //                                   );
// // //                                 }).toList(),
// // //                                 hint: const Text(
// // //                                   "Select Gender",
// // //                                   style: TextStyle(color: Colors.black38),
// // //                                 ),
// // //                                 onChanged: (newValue) {
// // //                                   setState(() {
// // //                                     selectedGender = newValue!;
// // //                                   });
// // //                                 },
// // //                                 decoration: const InputDecoration(
// // //                                   border: InputBorder.none,
// // //                                 ),
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       // Age Row
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'AGE                             ',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding:
// // //                                   const EdgeInsets.symmetric(horizontal: 26),
// // //                               child: TextFormField(
// // //                                 keyboardType: TextInputType.number,
// // //                                 decoration: const InputDecoration(
// // //                                     hintText: "Enter your Age ",
// // //                                     hintStyle: TextStyle(color: Colors.black38),
// // //                                     border: InputBorder.none),
// // //                                 controller: ageController,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'HEIGHT (Required)    ',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding:
// // //                                   const EdgeInsets.symmetric(horizontal: 26),
// // //                               child: TextFormField(
// // //                                 // keyboardType: TextInputType.number,
// // //                                 decoration: const InputDecoration(
// // //                                     hintText: "Enter your Height ",
// // //                                     hintStyle: TextStyle(color: Colors.black38),
// // //                                     border: InputBorder.none),
// // //                                 controller: heightController,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'water %                         ',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding: const EdgeInsets.all(10),
// // //                               child: TextFormField(
// // //                                 decoration: const InputDecoration(
// // //                                     hintText: "Enter percentage Water ",
// // //                                     hintStyle: TextStyle(
// // //                                         color: Colors.black38, fontSize: 14),
// // //                                     border: InputBorder.none),
// // //                                 controller: waterController,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),

// // //                   //! colum 2
// // //                   Column(
// // //                     children: [
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'WEIGHT (Required)',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding:
// // //                                   const EdgeInsets.symmetric(horizontal: 26),
// // //                               child: TextFormField(
// // //                                 decoration: const InputDecoration(
// // //                                     hintText: "Enter your weight ",
// // //                                     hintStyle: TextStyle(color: Colors.black38),
// // //                                     border: InputBorder.none),
// // //                                 controller: weightController,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'FAT% (If Available)',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding:
// // //                                   const EdgeInsets.symmetric(horizontal: 26),
// // //                               child: TextFormField(
// // //                                 decoration: const InputDecoration(
// // //                                     hintText: "Enter percentage Fat ",
// // //                                     hintStyle: TextStyle(color: Colors.black38),
// // //                                     border: InputBorder.none),
// // //                                 controller: fatController,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'MUSCLE                 ',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding: const EdgeInsets.only(
// // //                                   top: 5, left: 27, bottom: 5),
// // //                               child: TextFormField(
// // //                                 decoration: const InputDecoration(
// // //                                     hintText: "Enter Your Muscle ",
// // //                                     hintStyle: TextStyle(
// // //                                         color: Colors.black38, fontSize: 14),
// // //                                     border: InputBorder.none),
// // //                                 controller: muscleController,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                       const SizedBox(
// // //                         height: 10,
// // //                       ),
// // //                       const Row(
// // //                         mainAxisAlignment: MainAxisAlignment.start,
// // //                         children: [
// // //                           Text(
// // //                             'BMR (_kcal)                ',
// // //                             style: TextStyle(color: Colors.white, fontSize: 18),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                       Padding(
// // //                         padding: const EdgeInsets.all(12.0),
// // //                         child: Row(
// // //                           children: [
// // //                             Container(
// // //                               decoration: BoxDecoration(
// // //                                 color: Colors.white,
// // //                                 borderRadius: BorderRadius.circular(10),
// // //                               ),
// // //                               width: 179,
// // //                               height: 40,
// // //                               padding:
// // //                                   const EdgeInsets.symmetric(horizontal: 26),
// // //                               child: TextFormField(
// // //                                 decoration: const InputDecoration(
// // //                                     hintText: "Enter your BMR ",
// // //                                     hintStyle: TextStyle(color: Colors.black38),
// // //                                     border: InputBorder.none),
// // //                                 controller: bmrController,
// // //                               ),
// // //                             ),
// // //                           ],
// // //                         ),
// // //                       ),
// // //                       //! bottom
// // //                       const SizedBox(
// // //                         height: 300,
// // //                       ),
// // //                       Row(
// // //                         mainAxisAlignment: MainAxisAlignment.center,
// // //                         crossAxisAlignment: CrossAxisAlignment.center,
// // //                         children: [
// // //                           ElevatedButton(
// // //                             onPressed: () {},
// // //                             style: ButtonStyle(
// // //                               backgroundColor: WidgetStateProperty.all(
// // //                                   const Color(0xffD0FD3E)),
// // //                               padding: WidgetStateProperty.all(
// // //                                   const EdgeInsets.symmetric(
// // //                                       horizontal: 25, vertical: 10)),
// // //                               shape: WidgetStateProperty.all(
// // //                                   RoundedRectangleBorder(
// // //                                       borderRadius: BorderRadius.circular(13))),
// // //                             ),
// // //                             child: Row(
// // //                               mainAxisAlignment: MainAxisAlignment.center,
// // //                               crossAxisAlignment: CrossAxisAlignment.center,
// // //                               children: [
// // //                                 state is InBodyLoading
// // //                                     ? const CircularProgressIndicator()
// // //                                     : GestureDetector(
// // //                                         onTap: () {
// // //                                           context.read<UserCubit>().inBody(
// // //                                               gender: selectedGender,
// // //                                               userId: userId,
// // //                                               height: heightController.text,
// // //                                               weight: weightController.text,
// // //                                               age: ageController.text,
// // //                                               fat: fatController.text,
// // //                                               muscle: muscleController.text,
// // //                                               water: waterController.text,
// // //                                               bmr: bmrController.text);
// // //                                         },
// // //                                         child: const Text(
// // //                                           " Click Here ",
// // //                                           style: TextStyle(
// // //                                               fontSize: 24,
// // //                                               color: Colors.black),
// // //                                         ),
// // //                                       ),
// // //                               ],
// // //                             ),
// // //                           ),
// // //                         ],
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ],
// // //               ),
// // //             );
// // //           },
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }


// // ///////////////////////////////////////////



// // // ignore_for_file: deprecated_member_use

// // import 'package:flutter/material.dart';
// // import 'package:flutter_application_1/pages/age.dart';
// // import 'package:flutter_application_1/pages/core/login.dart';

// // class GenderSelection extends StatefulWidget {
// //   GenderSelection({super.key});

// //   @override
// //   // ignore: library_private_types_in_public_api
// //   _GenderSelectionState createState() => _GenderSelectionState();
// //   late String gender = "Male";
// // }

// // class _GenderSelectionState extends State<GenderSelection> {
// //   bool isMaleSelected = false;
// //   bool isFemaleSelected = false;
// //   String backgroundImage = 'assets/assets/images/Gender.jpg';

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           Container(
// //             decoration: BoxDecoration(
// //               image: DecorationImage(
// //                 image: AssetImage(backgroundImage),
// //                 fit: BoxFit.cover,
// //               ),
// //             ),
// //             child: Center(
// //               child: SingleChildScrollView(
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.start,
// //                   children: [
// //                     const SizedBox(
// //                       height: 50,
// //                     ),
// //                     const Text(
// //                       'TELL US ABOUT YOURSELF!',
// //                       style: TextStyle(color: Colors.white, fontSize: 28),
// //                     ),
// //                     const SizedBox(
// //                       height: 10,
// //                     ),
// //                     const Text(
// //                       '         TO GIVE YOU A BETTER EXPERIENCE WE NEED \n                            TO KNOW YOUR GENDER',
// //                       style: TextStyle(color: Colors.white, fontSize: 15),
// //                     ),
// //                     const SizedBox(
// //                       height: 200,
// //                     ),
// //                     GestureDetector(
// //                       onTap: () {
// //                         setState(() {
// //                           isMaleSelected = true;
// //                           isFemaleSelected = false;
// //                           backgroundImage = 'assets/assets/images/Gender.jpg';
// //                           widget.gender = "Male";
// //                         });
// //                       },
// //                       child: Container(
// //                         width: 100,
// //                         height: 100,
// //                         decoration: BoxDecoration(
// //                           shape: BoxShape.circle,
// //                           color: isMaleSelected
// //                               ? const Color(0xffD0FD3E)
// //                               : Colors.grey,
// //                         ),
// //                         child: const Center(
// //                           child: Text(
// //                             'Male',
// //                             style: TextStyle(color: Colors.black),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                     const SizedBox(height: 20),
// //                     GestureDetector(
// //                       onTap: () {
// //                         setState(() {
// //                           isMaleSelected = false;
// //                           isFemaleSelected = true;
// //                           backgroundImage = 'assets/assets/images/girl2.png';
// //                           widget.gender = "Female";
// //                         });
// //                       },
// //                       child: Container(
// //                         width: 100,
// //                         height: 100,
// //                         decoration: BoxDecoration(
// //                           shape: BoxShape.circle,
// //                           color: isFemaleSelected
// //                               ? const Color(0xffD0FD3E)
// //                               : Colors.grey,
// //                         ),
// //                         child: const Center(
// //                           child: Text(
// //                             'Female',
// //                             style: TextStyle(color: Colors.black),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                     const SizedBox(
// //                       height: 280,
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ),
// //           ),
// //           Positioned(
// //             bottom: 20,
// //             left: 20,
// //             child: Row(
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               children: [
// //                 GestureDetector(
// //                   onTap: () {
// //                     Navigator.push(
// //                       context,
// //                       MaterialPageRoute(builder: (context) => const Login()),
// //                     );
// //                   },
// //                   child: const Icon(
// //                     Icons.arrow_circle_left_outlined,
// //                     color: Color(0xffD0FD3E),
// //                     size: 60,
// //                   ),
// //                 ),
// //                 const SizedBox(
// //                   width: 210,
// //                 ),
// //                 ElevatedButton(
// //                   onPressed: () {
// //                     // Add your logic for the Skip button
// //                   },
// //                   style: ButtonStyle(
// //                     backgroundColor:
// //                         MaterialStateProperty.all(const Color(0xffD0FD3E)),
// //                     padding: MaterialStateProperty.all(
// //                         const EdgeInsets.symmetric(
// //                             horizontal: 25, vertical: 10)),
// //                     shape: MaterialStateProperty.all(RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(27))),
// //                   ),
// //                   child: GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => Age(
// //                                   gender: widget.gender,
// //                                 )),
// //                       );
// //                       print(widget.gender);
// //                     },
// //                     child: const Text(
// //                       " Next > ",
// //                       style: TextStyle(fontSize: 24, color: Colors.black),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/pages/cache/cache_helper.dart';
// import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
// import 'package:flutter_application_1/private/home_private.dart';

// import '../Drying/drying_levels.dart';
// import '../Top_sources/Top_Sources.dart';
// import '../constant/constant.dart';
// import '../guide/armor_guide.dart';
// import '../guide/back_guide.dart';
// import '../guide/cardio_guide.dart';
// import '../guide/chest_guide.dart';
// import '../guide/legs_guide.dart';
// import '../guide/shoulders_guide.dart';
// import '../healthy_recipes/bulking_levels.dart';
// import '../levels/Beginner/beginner_screen.dart';
// import '../loss_weight/loss_wight_level_one.dart';
// import '../payment/plan.dart';
// import '../supplement/supplement_screen.dart';
// import '../supplement/the_most_important_tips.dart';
// import 'Nutrition_Program_see_all.dart';
// import 'nutrition_guide_see_all.dart';
// import 'training_programs_see_all.dart';

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
  

//   @override
//   Widget build(BuildContext context) {

//     final int index = CacheHelper().getData(key: ApiKey.index) ?? 0;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         actions: [
//           Padding(
//               padding: const EdgeInsets.all(14.0),
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const HomePrivate()),
//                   );
//                 },
//                 child: const Text(
//                   'Private-Home',
//                   style: TextStyle(color: Color(0xffD0FD3E), fontSize: 22),
//                 ),
//               )),
//         ],
//       ),
//       //!  singlechildScollview
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             children: [
//               const Row(
//                 children: [
//                   Text(
//                     'Common Questions',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 24),
//                   ),
//                   SizedBox(
//                     width: 170,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => const TheMostImportantTips()),
//                   );
//                 },
//                 child: Image.asset('assets/assets/images/questions.png'),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   const Text(
//                     'Nutritional supplements',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 14),
//                   ),
//                   const SizedBox(
//                     width: 170,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const SupplementScreen()),
//                       );
//                     },
//                     child: const Text(
//                       'See All',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const SupplementScreen()),
//                     );
//                   },
//                   child: Image.asset('assets/assets/images/supplements2.png')),
//               const SizedBox(
//                 height: 10,
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     'Exercise guide',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ChestGuide()),
//                         );
//                       },
//                       child: CircleAvatar(
//                         backgroundImage:
//                             AssetImage('assets/assets/images/small_chest.jpg'),
//                         backgroundColor: Color(0xffD9D9D9),
//                         maxRadius: 45,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const BackGuide()),
//                         );
//                       },
//                       child: CircleAvatar(
//                         backgroundImage:
//                             AssetImage('assets/assets/images/samll_back.jpg'),
//                         backgroundColor: Color(0xffD9D9D9),
//                         maxRadius: 45,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ShouldersGuide()),
//                         );
//                       },
//                       child: CircleAvatar(
//                         backgroundImage: AssetImage(
//                             'assets/assets/images/small_sholder.png'),
//                         backgroundColor: Color(0xffD9D9D9),
//                         maxRadius: 45,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const LegsGuide()),
//                         );
//                       },
//                       child: CircleAvatar(
//                         backgroundImage:
//                             AssetImage('assets/assets/images/samll_leg.jpg'),
//                         backgroundColor: Color(0xffD9D9D9),
//                         maxRadius: 45,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const ArmorGuide()),
//                         );
//                       },
//                       child: CircleAvatar(
//                         backgroundImage:
//                             AssetImage('assets/assets/images/small_armor.jpg'),
//                         backgroundColor: Color(0xffD9D9D9),
//                         maxRadius: 45,
//                       ),
//                     ),
//                     SizedBox(
//                       width: 5,
//                     ),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const CardioGuide()),
//                         );
//                       },
//                       child: CircleAvatar(
//                         backgroundImage:
//                             AssetImage('assets/assets/images/small_cardio.jpg'),
//                         backgroundColor: Color(0xffD9D9D9),
//                         maxRadius: 45,
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   const Text(
//                     'Training programs',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                   ),
//                   const SizedBox(
//                     width: 170,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const TrainingPrograms()),
//                       );
//                     },
//                     child: const Text(
//                       'See All',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) =>
//                             LevelBeginnerScreen(initialIndex: 1)),
//                   );
//                 },
//                 child: Image.asset(
//                   'assets/assets/images/learn_basic_of_drying.png',
//                   fit: BoxFit.fill,
//                   width: 600,
//                 ),
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 children: [
//                   const Text(
//                     'Nutrition Programs',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                   ),
//                   const SizedBox(
//                     width: 170,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) =>
//                                 const NutritionProgramSeeAll()),
//                       );
//                     },
//                     child: const Text(
//                       'See All',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                     ),
//                   )
//                 ],
//               ),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => DryingLevels(
//                                 initialIndex: index,
//                               )),
//                     );
//                   },
//                   child: Image.asset('assets/assets/images/Dietart.jpg')),
//               const SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => HealthyRecipesBulkingUp1(
//                                 initialIndex: index,
//                               )),
//                     );
//                   },
//                   child: Image.asset('assets/assets/images/Nutritional.jpg')),
//               const SizedBox(
//                 height: 20,
//               ),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const LossWightUp1()),
//                     );
//                   },
//                   child: Image.asset('assets/assets/images/weight loss.jpg')),
//               const SizedBox(
//                 height: 30,
//               ),
//               Row(
//                 children: [
//                   const Text(
//                     'Nutrition Guide',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                   ),
//                   const SizedBox(
//                     width: 190,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Nutritionguide()),
//                       );
//                     },
//                     child: const Text(
//                       'See All',
//                       style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                     ),
//                   )
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const TopSources(
//                                   initialIndex: 0,
//                                 )),
//                       );
//                     },
//                     child: Image.asset(
//                       'assets/assets/images/protein.png',
//                       height: 189,
//                       width: 182,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const TopSources(
//                                   initialIndex: 1,
//                                 )),
//                       );
//                     },
//                     child: Image.asset(
//                       'assets/assets/images/carbs.png',
//                       height: 189,
//                       width: 182,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 20,
//               ),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const TopSources(
//                                   initialIndex: 3,
//                                 )),
//                       );
//                     },
//                     child: Image.asset(
//                       'assets/assets/images/Dariy.png',
//                       height: 189,
//                       width: 182,
//                     ),
//                   ),
//                   const SizedBox(
//                     width: 20,
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const TopSources(
//                                   initialIndex: 4,
//                                 )),
//                       );
//                     },
//                     child: Image.asset(
//                       'assets/assets/images/fat.png',
//                       height: 189,
//                       width: 182,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 30,
//               ),
//               const Row(
//                 children: [
//                   Text(
//                     'Nutrition supplements',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                   ),
//                   SizedBox(
//                     width: 150,
//                   ),
//                   Text(
//                     'See All',
//                     style: TextStyle(color: Color(0xffD0FD3E), fontSize: 18),
//                   )
//                 ],
//               ),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const SupplementScreen()),
//                     );
//                   },
//                   child: Image.asset('assets/assets/images/supplements.jpg')),
//               GestureDetector(
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (context) => const SupplementScreen()),
//                     );
//                   },
//                   child: Image.asset('assets/assets/images/supplements.jpg')),
//             ],
//           ),
//         ),
//       ),
//       bottomNavigationBar: const bottom_tab_bar(),
//     );
//   }
// }
