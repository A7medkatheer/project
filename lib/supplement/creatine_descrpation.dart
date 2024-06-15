import 'package:flutter/material.dart';

import '../core/home.dart';
import 'supplement_screen.dart';

class CreatineDescrpation extends StatelessWidget {
  const CreatineDescrpation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'creatine',
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
              'What is creatine?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'It\'s a substance that consists mainly of 3 different amino acids, and these acids specifically make up approximately 1% of the total blood volume in the body.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Are there any functions for creatine in the body?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              '1- Increase the size of cells by providing them with the necessary water and moisture.\n'
              '2- Increase endurance while exercising.\n'
              '3- Reducing myostatin levels in the body, which may slow down and reduce muscle growth and hypertrophy.\n'
              '4- Improving signals and connections between cells which increases the effectiveness of muscles in repairing any damage.\n'
              '5- Reducing the breakdown of proteins, which increases muscle mass in the body.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Benefits of creatine',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              '1- Fighting Parkinson\'s disease',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 17),
            ),
            Text(
              'Parkinson\'s disease occurs when the level of the main neurotransmitter in the brain (dopamine) decreases, and it has been found that creatine has a role in raising dopamine levels in the brain and preventing their decline. Therefore, having Parkinson\'s patients gradually engage in weight lifting exercises may help fight their Parkinson\'s disease.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '2- Fight diabetes',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 17),
            ),
            Text(
              'Taking creatine supplements may help lower blood sugar levels, especially when taken with regular exercise.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 8),
            Text(
              '3- Muscle and cell growth',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 17),
            ),
            Text(
              'It helps stimulate the production of special modecules that help cells burn calories and raise energy consumption levels the body especially during exercise.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Other benefits of creatine for the body',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              'Creatine has many other benefits as well, including the following:\n'
              '1- Improve brain functions\n'
              '2- Increasing the ability to concentrate.\n'
              '3- Alleviating symptoms of depression.\n'
              '4- Increase bone density and mass.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Recommended doses of it',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20),
            ),
            SizedBox(height: 8),
            Text(
              '- It is preferable to start by taking 4 doses of it daily over a period of 5-7 days, and the amount of each dose of each dose is 5 grams in what is called the storage phase.\n'
              '- Its absorption into the muscles usually improves with eating foods rich in proteins or carbohydrates, after which only 3-5 grams of creatine are taken daily.',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
