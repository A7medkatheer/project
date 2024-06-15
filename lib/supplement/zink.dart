import 'package:flutter/material.dart';

import '../core/home.dart';
import 'supplement_screen.dart';

class Zink extends StatelessWidget {
  const Zink({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'ZINK',
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
              'Harmful effects of zinc pills',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Increasing the level of zinc is harmful to the body. Using zinc pills for long periods without consulting a doctor is not permissible and may lead to zinc poisoning.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              'Here are the side effects of prolonged use of zinc pills:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 16,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '( Nausea - Vomiting - diarrhea - Metallic taste in the mouth - Anorexia - Abdominal pain - headache )',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Potential benefits of zinc pills',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '1- Improving the functioning of the immune system\n'
              '2- Relieve diarrhea\n'
              '3- Improve learning and memory\n'
              '4- Treating colds\n'
              '5- Accelerate wound healing\n'
              '6- Get rid of acne',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Recommended amount of zinc',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '+19 years: 11 milligrams (Male and female)',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
