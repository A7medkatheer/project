import 'package:flutter/material.dart';

import '../core/home.dart';
import 'supplement_screen.dart';

class VitaminNation extends StatelessWidget {
  const VitaminNation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'VITAMIN NATION',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
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
              // Content about Vitamin Nation
              Text(
                'The description',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Vitamin Nation is a distinctive formula that contains a variety of essential vitamins and minerals to meet the body\'s daily needs. This product is designed to support overall health and maintain a healthy, active lifestyle.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Dosage and usage:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Take one tablet daily with breakfast and drink plenty of water.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'The benefits:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xffD0FD3E),
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '1- Supports the immune system and helps fight infections and diseases.\n'
                '2- Promotes healthy skin, hair and nails.\n'
                '3- It acts as an antioxidant to rejuvenate and protect cells from damage.\n'
                '4- Supports bone health and strengthens teeth.\n'
                '5- Improves metabolism and boosts energy levels.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ));
  }
}
