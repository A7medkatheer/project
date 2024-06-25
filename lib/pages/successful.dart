import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/inbody_opation.dart';

class Successful extends StatelessWidget {
  const Successful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/assets/images/true.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Successful',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const Text(
            'Your have successfully registered in our ',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const Text(
            'app and start workinging in it ',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(const Color(0xffD0FD3E)),
              padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 40, vertical: 10)),
              shape: WidgetStateProperty.all(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22))),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InbodyOpation()),
                );
              },
              child: const Text(
                "Start",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
