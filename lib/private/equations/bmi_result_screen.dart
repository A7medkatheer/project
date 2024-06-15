// import 'package:flutter/material.dart';

// class BmiResultScreen extends StatelessWidget {
//   final int result;
//   final bool isMale;
//   final int age;
//   final String resultText;

//   const BmiResultScreen(
//       {super.key,
//       required this.result,
//       required this.isMale,
//       required this.age,
//       required this.resultText});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text('BMI Result'),
//       ),
//       body: Center(
//           child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
//         Text(
//           'Gender : ${isMale ? 'Male' : 'Female'}',
//           style: TextStyle(
//               fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         Text(
//           'your BMI : $result',
//           style: TextStyle(
//               fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         Text(
//           'Age  : $age',
//           style: TextStyle(
//               fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//         Text(
//           'status  : $resultText',
//           style: TextStyle(
//               fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
//         ),
//       ])),
//     );
//   }
// }
