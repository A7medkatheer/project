import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';

class PasswordResat extends StatelessWidget {
  const PasswordResat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1c1c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset('assets/assets/images/3.png'),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            'Password Resat',
            style: TextStyle(fontSize: 32, color: Colors.white),
          ),
          const Text(
            'Your Password has Been successfully',
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          const Text(
            'Click below to log in magically',
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
                  MaterialPageRoute(builder: (context) => const Login()),
                );
              },
              child: const Text(
                "Back to Login",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
