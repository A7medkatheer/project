// ignore_for_file: file_names, library_private_types_in_public_api, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';


class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  _PinputExampleState createState() => _PinputExampleState();
}

class _PinputExampleState extends State<ForgetPassword> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _textEditingController = TextEditingController();
  final String _inputText = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.amber.withOpacity(0),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  '    FORGET PASSWORD ?',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'ENTER YOUR INFORMATION BELOW OR\nLOGIN WITH A OTHER ACCOUNT  ',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(66),
              ),
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                    hintText: "Email ",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none),
                    controller: _textEditingController,
              ),
            ),
            const Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 78,
              endIndent: 50,
            ),
            const SizedBox(
              height: 220,
            ),
            const Text(
              'Try another way',
              style: TextStyle(color: Color(0xffD0FD3E), fontSize: 15),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(const Color(0xffD0FD3E)),
                padding: WidgetStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 90, vertical: 10)),
                shape: WidgetStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(27))),
              ),
              child: const Text(
                "Send",
                style: TextStyle(fontSize: 24, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
