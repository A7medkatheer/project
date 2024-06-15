// ignore_for_file: file_names

// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ui_screens/pages/gender.dart';
// import 'package:ui_screens/pages/login.dart';

// class Signup extends StatelessWidget {
//   const Signup({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: SizedBox(
//         height: double.infinity,
//         width: double.infinity,
//         //   color: Colors.amber[100],
//         child: Stack(
//           children: [
//             Image.asset('assets/assets/images/sign_in.jpg'),
//             Center(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.start,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(builder: (context) => Login()),
//                             );
//                           },
//                           child: Text(
//                             '   Login ',
//                             style: TextStyle(
//                               fontSize: 21,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               //   fontFamily: "myfont"
//                             ),
//                           ),
//                         ),
//                         Text(
//                           '   Sign up ',
//                           style: TextStyle(
//                             fontSize: 21,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                             //   fontFamily: "myfont"
//                           ),
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 270,
//                     ),
//                     Text(
//                       'Hello',
//                       style: TextStyle(fontSize: 40, color: Colors.white),
//                     ),
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       'ENTER YOUR INFORMATION BELOW OR \nLOGIN WITH A OTHER ACCOUNT',
//                       style: TextStyle(fontSize: 20, color: Colors.white70),
//                     ),
//                     SizedBox(
//                       height: 100,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(66),
//                       ),
//                       width: double.infinity,
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                             icon: Icon(
//                               Icons.person,
//                               color: Color(
//                                   0xffD0FD3E), //Color.fromARGB(255, 83, 76, 76)
//                             ),
//                             hintText: "Name ",
//                             hintStyle: TextStyle(color: Colors.white),
//                             border: InputBorder.none),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(66),
//                       ),
//                       width: double.infinity,
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         decoration: InputDecoration(
//                             icon: Icon(
//                               Icons.email,
//                               color: Color(
//                                   0xffD0FD3E), //Color.fromARGB(255, 83, 76, 76)
//                             ),
//                             hintText: "Email ",
//                             hintStyle: TextStyle(color: Colors.white),
//                             border: InputBorder.none),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(66),
//                       ),
//                       width: double.infinity,
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             suffix: Icon(
//                               Icons.visibility,
//                               color: Colors.purple[900],
//                             ),
//                             icon: Icon(
//                               Icons.lock,
//                               color: Color(0xffD0FD3E),
//                               size: 19,
//                             ),
//                             hintText: " Password ",
//                             hintStyle: TextStyle(color: Colors.white),
//                             border: InputBorder.none),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Container(
//                       decoration: BoxDecoration(
//                         color: Colors.black,
//                         borderRadius: BorderRadius.circular(66),
//                       ),
//                       width: double.infinity,
//                       padding: EdgeInsets.symmetric(horizontal: 16),
//                       child: TextField(
//                         style: TextStyle(color: Colors.white),
//                         obscureText: true,
//                         decoration: InputDecoration(
//                             suffix: Icon(
//                               Icons.visibility,
//                               color: Colors.purple[900],
//                             ),
//                             icon: Icon(
//                               Icons.lock,
//                               color: Color(0xffD0FD3E),
//                               size: 19,
//                             ),
//                             hintText: " Confirm Password ",
//                             hintStyle: TextStyle(color: Colors.white),
//                             border: InputBorder.none),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 17,
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Container(
//                       margin: EdgeInsets.symmetric(vertical: 27),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(13),
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border:
//                                     Border.all(color: Colors.black, width: 1)),
//                             child: SvgPicture.asset(
//                               "assets/assets/icons/facebook.svg",
//                               color: Colors.white,
//                               height: 21,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 40,
//                           ),
//                           Container(
//                             padding: EdgeInsets.all(13),
//                             decoration: BoxDecoration(
//                                 shape: BoxShape.circle,
//                                 border:
//                                     Border.all(color: Colors.black, width: 1)),
//                             child: SvgPicture.asset(
//                               "assets/assets/icons/google-plus.svg",
//                               color: Colors.white,
//                               height: 21,
//                             ),
//                           ),
//                           SizedBox(
//                             width: 100,
//                           ),
//                           ElevatedButton(
//                             onPressed: () {},
//                             style: ButtonStyle(
//                               backgroundColor:
//                                   MaterialStateProperty.all(Color(0xffD0FD3E)),
//                               padding: MaterialStateProperty.all(
//                                   EdgeInsets.symmetric(
//                                       horizontal: 30, vertical: 10)),
//                               shape: MaterialStateProperty.all(
//                                   RoundedRectangleBorder(
//                                       borderRadius: BorderRadius.circular(27))),
//                             ),
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => GenderSelection()),
//                                 );
//                               },
//                               child: Text(
//                                 "Sign Up >",
//                                 style: TextStyle(
//                                     fontSize: 24, color: Colors.black),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
