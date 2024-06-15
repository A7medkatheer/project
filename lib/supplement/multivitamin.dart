import 'package:flutter/material.dart';

import '../core/home.dart';
import 'supplement_screen.dart';

class Multivitamin extends StatelessWidget {
  const Multivitamin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'MULTIVITAMIN',
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
              'Ingredients of multivitamin pills',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Vitamin D: This vitamin has many benefits for the human body. It works to enhance the absorption of calcium ions in the body and also helps maintain bone health.\n\n'
              'Vitamin B: There are many types of vitamin B, which generally help maintain blood cells, and also maintain nerve health, especially vitamin B12.\n\n'
              'Vitamin C: It plays an important role in promoting the health of the skin and skin tissues, and also works to raise the efficiency of the immune system.\n\n'
              'Folic acid: It is one of the important factors that helps in the growth process of the fetus, and it also plays an important role in protecting it (i.e. the fetus) from any birth defects.\n\n'
              'In addition to the presence of many other types of vitamins,such as:vitamin A, vitamin K,and vitamin E',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Benefits of multivitamin:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '1- It works to supply the body with the necessary energy, which in turn leads to an increase in the individual\'s activity.\n'
              '2- Maintains bone health and safety.\n'
              '3- It also improves the individual\'s mood and reduces feelings of anxiety.\n'
              '4- Improving memory in particular and all brain functions in general.\n'
              '5- It works to maintain the health of both muscles and eyes.\n'
              '6- For women during pregnancy, taking multivitamins contributes to maintaining the health of both the pregnant woman and the fetus.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Harmful effects of multivitamin:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            SizedBox(height: 8),
            Text(
              '1- Constipation or diarrhea occurs.\n'
              '2- Stomach disorders.\n'
              '3- Feeling a bitter and annoying taste in the mouth.\n'
              '4- Sensation of itching in the body.\n'
              '5- The appearance of skin rashes.\n'
              '6- Swelling occurs in the face in general or in the tongue and lips only.\n'
              '7- Severe feeling of dizziness.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
