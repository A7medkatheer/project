import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/profile_page.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _PasswordState();
}

class _PasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilePage()),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'Security',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildTextFieldRow('Enter Your Old Password', 'old password', false),
          buildTextFieldRow('Enter Your New Password', 'new password', false),
          buildTextFieldRow('Confirm Password', 'confirm password', false),
          const SizedBox(
            height: 100,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffD0FD3E),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
              child: const Text(
                "Save Change",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildTextFieldRow(String label, String hintText, bool obscureText) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const SizedBox(height: 10),
      Text(
        '   $label',
        style: const TextStyle(color: Colors.white, fontSize: 18),
      ),
      const SizedBox(height: 5),
      Container(
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        width: double.infinity,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 26),
        child: TextField(
          style: const TextStyle(color: Colors.white),
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
      ),
    ],
  );
}
