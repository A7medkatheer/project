// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:ui_screens/pages/Forget_password.dart';
// import 'package:ui_screens/pages/gender.dart';
// import 'package:ui_screens/pages/signUp.dart';

// class Login extends StatelessWidget {
//   const Login({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.black,
//         body: SizedBox(
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             children: [
//               Image.asset('assets/assets/images/Login.png'),
//               Center(
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 20,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: [
//                           Text(
//                             '   Login ',
//                             style: TextStyle(
//                               fontSize: 21,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               //   fontFamily: "myfont"
//                             ),
//                           ),
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Signup()),
//                               );
//                             },
//                             child: Text(
//                               '   Sign up ',
//                               style: TextStyle(
//                                 fontSize: 21,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.white,
//                                 //   fontFamily: "myfont"
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(
//                         height: 300,
//                       ),
//                       Text(
//                         'Welcoma Back',
//                         style: TextStyle(fontSize: 40, color: Colors.white),
//                       ),
//                       SizedBox(
//                         height: 200,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(66),
//                         ),
//                         width: double.infinity,
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: TextField(
//                           style: TextStyle(color: Colors.white),
//                           decoration: InputDecoration(
//                               icon: Icon(
//                                 Icons.person,
//                                 color: Color(0xffD0FD3E),
//                               ),
//                               hintText: "Email :",
//                               hintStyle: TextStyle(color: Colors.white),
//                               border: InputBorder.none),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 5,
//                       ),
//                       Container(
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           borderRadius: BorderRadius.circular(66),
//                         ),
//                         width: double.infinity,
//                         padding: EdgeInsets.symmetric(horizontal: 16),
//                         child: TextField(
//                           obscureText: true,
//                           style: TextStyle(color: Colors.white),
//                           decoration: InputDecoration(
//                             suffix: Icon(
//                               Icons.visibility,
//                               color: Colors.purple[900],
//                             ),
//                             icon: Icon(
//                               Icons.lock,
//                               color: Color(0xffD0FD3E),
//                               size: 19,
//                             ),
//                             hintText: " Password :",
//                             hintStyle: TextStyle(color: Colors.white),
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 17,
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         children: [
//                           GestureDetector(
//                             onTap: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => ForgetPassword()),
//                               );
//                             },
//                             child: Text(
//                               'Forget Password',
//                               style: TextStyle(color: Color(0xffD0FD3E)),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 30,
//                           ),
//                         ],
//                       ),
//                       Container(
//                         margin: EdgeInsets.symmetric(vertical: 27),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               padding: EdgeInsets.all(13),
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: Colors.black, width: 1)),
//                               child: SvgPicture.asset(
//                                 "assets/assets/icons/facebook.svg",
//                                 color: Colors.white,
//                                 height: 21,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 40,
//                             ),
//                             Container(
//                               padding: EdgeInsets.all(13),
//                               decoration: BoxDecoration(
//                                   shape: BoxShape.circle,
//                                   border: Border.all(
//                                       color: Colors.black, width: 1)),
//                               child: SvgPicture.asset(
//                                 "assets/assets/icons/google-plus.svg",
//                                 color: Colors.white,
//                                 height: 21,
//                               ),
//                             ),
//                             SizedBox(
//                               width: 130,
//                             ),
//                             ElevatedButton(
//                               onPressed: () {},
//                               style: ButtonStyle(
//                                 backgroundColor: MaterialStateProperty.all(
//                                     Color(0xffD0FD3E)),
//                                 padding: MaterialStateProperty.all(
//                                     EdgeInsets.symmetric(
//                                         horizontal: 30, vertical: 10)),
//                                 shape: MaterialStateProperty.all(
//                                     RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(27))),
//                               ),
//                               child: GestureDetector(
//                                 onTap: () {
//                                   Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                         builder: (context) =>
//                                             GenderSelection()),
//                                   );
//                                 },
//                                 child: Text(
//                                   "login >",
//                                   style: TextStyle(
//                                       fontSize: 24, color: Colors.black),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
