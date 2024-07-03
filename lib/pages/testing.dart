// import 'package:flutter/material.dart';
// import 'package:o3d/o3d.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   O3DController o3dController = O3DController();
//   PageController mainPageController = PageController();
//   PageController textsPageController = PageController();
//   int page = 0;
//   double totalWaterIntake = 0;
//   final double dailyGoal = 2000; // in ml
//   final TextEditingController waterIntakeController = TextEditingController();

//   void _addWaterIntake() {
//     setState(() {
//       final double waterIntake = double.parse(waterIntakeController.text);
//       totalWaterIntake += waterIntake;
//       waterIntakeController.clear();
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.sizeOf(context).height;

//     return Scaffold(
//       backgroundColor: Colors.blue.shade50,
//       body: SafeArea(
//         child: Stack(
//           children: [
//             O3D(
//               src:
//                   'assets/assets/images/facial__body_animated_party_m_0001_-_actorcore.glb',
//               controller: o3dController,
//               ar: false,
//               autoPlay: true,
//               autoRotate: false,
//               cameraControls: false,
//               cameraTarget: CameraTarget(-.25, 1.5, 1.5),
//               cameraOrbit: CameraOrbit(0, 90, 1),
//             ),
//             PageView(
//               controller: mainPageController,
//               children: [
//                 ListView(
//                   padding: EdgeInsets.fromLTRB(12, height * 0.8, 12, 100),
//                   children: [
//                     Card(
//                       child: Padding(
//                         padding: const EdgeInsets.all(32.0),
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Image.asset(
//                             //   'assets/water_glass.jpg',
//                             //   fit: BoxFit.cover,
//                             //   width: 70,
//                             //   height: 70,
//                             // ),
//                             const Expanded(
//                               child: Padding(
//                                 padding: EdgeInsets.symmetric(horizontal: 8.0),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       'Drink Water',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                     Text(
//                                       'Stay Hydrated',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                             const Icon(
//                               Icons.local_drink,
//                               color: Colors.blue,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Column(
//                         children: [
//                           TextField(
//                             controller: waterIntakeController,
//                             keyboardType: TextInputType.number,
//                             decoration: InputDecoration(
//                               labelText: 'Water Intake (ml)',
//                               labelStyle: TextStyle(color: Colors.black),
//                               fillColor: Colors.white,
//                               filled: true,
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                             ),
//                           ),
//                           const SizedBox(height: 10),
//                           ElevatedButton(
//                             onPressed: _addWaterIntake,
//                             child: const Text('Add Water Intake'),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Text(
//                       'Total Water Intake: ${totalWaterIntake.toStringAsFixed(0)} ml',
//                       style:
//                           TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 20),
//                     CircularProgressIndicator(
//                       value: totalWaterIntake / dailyGoal,
//                       strokeWidth: 10,
//                       backgroundColor: Colors.grey,
//                       valueColor:
//                           const AlwaysStoppedAnimation<Color>(Colors.blue),
//                     ),
//                     const SizedBox(height: 10),
//                     Text(
//                       '${((totalWaterIntake / dailyGoal) * 100).toStringAsFixed(1)}% of Daily Goal',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                   ],
//                 ),
//                 ClipPath(
//                   clipper: InvertedCircleClipper(),
//                   child: Container(
//                     color: Colors.white,
//                   ),
//                 )
//               ],
//             ),
//             Container(
//               width: 100,
//               height: double.infinity,
//               margin: const EdgeInsets.all(12),
//               child: PageView(
//                 controller: textsPageController,
//                 physics: const NeverScrollableScrollPhysics(),
//                 children: [
//                   Column(
//                     children: [
//                       const SizedBox(
//                         width: double.infinity,
//                         child: FittedBox(
//                           fit: BoxFit.fitWidth,
//                           child: Text("Water Intake Tracker"),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: double.infinity,
//                         child: Row(
//                           children: [
//                             Expanded(
//                               child: FittedBox(
//                                 fit: BoxFit.fitWidth,
//                                 child: Text("87"),
//                               ),
//                             ),
//                             Text("%")
//                           ],
//                         ),
//                       ),
//                       Row(
//                         children: [
//                           const Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 8.0),
//                             child: Icon(Icons.local_drink, color: Colors.blue),
//                           ),
//                           Expanded(
//                               child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text('${totalWaterIntake.toStringAsFixed(0)}'),
//                               const Text(
//                                 "ml",
//                                 style:
//                                     TextStyle(fontSize: 12, color: Colors.grey),
//                               ),
//                             ],
//                           ))
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           currentIndex: page,
//           onTap: (page) {
//             mainPageController.animateToPage(page,
//                 duration: const Duration(milliseconds: 500),
//                 curve: Curves.ease);
//             textsPageController.animateToPage(page,
//                 duration: const Duration(milliseconds: 500),
//                 curve: Curves.ease);

//             if (page == 0) {
//               o3dController.cameraTarget(-.25, 1.5, 1.5);
//               o3dController.cameraOrbit(0, 90, 1);
//             } else if (page == 1) {
//               o3dController.cameraTarget(0, 1.8, 0);
//               o3dController.cameraOrbit(-90, 90, 1.5);
//             } else if (page == 2) {
//               o3dController.cameraTarget(0, 3, 0);
//               o3dController.cameraOrbit(0, 90, -3);
//             }

//             setState(() {
//               this.page = page;
//             });
//           },
//           showUnselectedLabels: false,
//           showSelectedLabels: false,
//           items: const [
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.analytics_outlined), label: 'home'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.timer_outlined), label: 'home'),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person_outline), label: 'home'),
//           ]),
//     );
//   }
// }

// class InvertedCircleClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.addOval(Rect.fromCircle(
//         center: Offset(size.width / 2, size.height / 2), radius: size.height));
//     return path;
//   }

//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) {
//     return false;
//   }
// }
