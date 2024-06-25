import 'package:flutter/material.dart';

class ConnectWithUs extends StatelessWidget {
  const ConnectWithUs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Text(
              '         Connect with us in email:\n fitness&feedingSystem@gmail.com',
              style: TextStyle(color: Color(0xffD0FD3E), fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
