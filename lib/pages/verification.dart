// import 'package:flutter/material.dart';
// import 'package:pinput/pinput.dart';
// import 'package:ui_screens/pages/Forget_password.dart';

// class Verification extends StatefulWidget {
//   @override
//   _PinputExampleState createState() => _PinputExampleState();
// }

// class _PinputExampleState extends State<Verification> {
//   TextEditingController _textEditingController = TextEditingController();
//   String _inputText = '';

//   @override
//   void dispose() {
//     _textEditingController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black45,
//       appBar: AppBar(
//         backgroundColor: Colors.amber.withOpacity(0),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => ForgetPassword()),
//             );
//           },
//         ),
//       ),
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             children: [
//               Text(
//                 '    VERIFICATION',
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Text(
//             'CHECK YOUR EMAIL WE\'VE SENT \n YOU THE PIN YOUR EMAIL.  ',
//             style: TextStyle(color: Colors.white, fontSize: 13),
//           ),
//           SizedBox(
//             height: 50,
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Pinput(
//                 length: 6,
//                 controller: _textEditingController,
//                 onChanged: (value) {
//                   setState(() {
//                     _inputText = value;
//                   });
//                 },
//                 cursor: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Container(
//                       margin: const EdgeInsets.only(bottom: 9),
//                       width: 22,
//                       height: 2,
//                       color: Color(0xffD0FD3E), // Bottom cursor color
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(
//             height: 220,
//           ),
//           Text(
//             'Did you receive any code?',
//             style: TextStyle(color: Color(0xffD0FD3E)),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           ElevatedButton(
//             onPressed: () {},
//             style: ButtonStyle(
//               backgroundColor: MaterialStateProperty.all(Color(0xffD0FD3E)),
//               padding: MaterialStateProperty.all(
//                   EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
//               shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(27))),
//             ),
//             child: Text(
//               "Verify",
//               style: TextStyle(fontSize: 24, color: Colors.black),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
