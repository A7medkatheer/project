import 'package:flutter/material.dart';

import '../core/home.dart';
import 'supplement_screen.dart';

class OptiMen extends StatelessWidget {
  const OptiMen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'OPTI-MEN',
            style: TextStyle(
                color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffD0FD3E),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const HomeScreen())));
            },
          ),
        ],
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SupplementScreen()),
            );
          },
          child: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: const [
            Text(
              'Advantages of Optimum Nutrition Opti Multivitamin',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 15,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '1- Contains 8 essential amino acids\n'
              '2- It forms the basic building block for muscle growth\n'
              '3- Enhancing sexual ability because it contains 8 concentrates\n'
              '4- Protection against prostate enlargement\n'
              '5- Supports erection strength\n'
              '6- Improving sperm capacity and increasing their number\n'
              '7- Strengthening the immune system\n'
              '8- Contains more than 20 antioxidants from vegetable and fruit concentrates\n'
              '9- It includes 3 enzymes designed to increase and accelerate the absorption process\n'
              '10- It contains 25 essential vitamins and minerals and B vitamins.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
