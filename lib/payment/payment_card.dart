// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../constant/constant.dart';
import '../core/home.dart';

class PaymentCard extends StatefulWidget {
  const PaymentCard({super.key});

  @override
  _PaymentCardState createState() => _PaymentCardState();
}

class _PaymentCardState extends State<PaymentCard> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Card Info',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomeScreen()),
              );
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 35,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 80,
            ),
            const SizedBox(height: 20),
            buildTextFieldRow('Card Number', '1234 5678 9101 1121', 380),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                buildTextFieldRow('Expiration Date', 'MM/YY', 180),
                const SizedBox(
                  width: 18,
                ),
                buildTextFieldRow('CVV', '123', 180),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value!;
                    });
                  },
                  checkColor: Colors.black,
                  activeColor: Colors.white,
                ),
                const Text(
                  'Save card information',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xffD0FD3E),
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13),
                  ),
                ),
                child: const Text(
                  "Pay USD 59.28",
                  style: TextStyle(fontSize: 24, color: Colors.black),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Center(
              child: Text(
                ' Your personal data will be used to process your order, \n support your experience throughout this website, and for \n other purposes described in our privacy policy.',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const bottom_tab_bar(),
    );
  }
  Widget buildTextFieldRow(String label, String hintText, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 10),
        Text(
          '   $label',
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        const SizedBox(height: 15),
        Container(
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
          ),
          width: width,
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: TextField(
            obscureText: true,
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
}
