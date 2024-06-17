// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile/change_password.dart';
import 'package:flutter_application_1/profile/setting_screen.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../constant/constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  DateTime? _selectedDate;
  String _selectedCity = 'Ismailia';
  File? _profileImage;

  final List<String> _cities = [
    'Cairo ',
    'Alexandria',
    'Giza',
    'Shubra El Kheima',
    'Port Said',
    'Suez',
    'Mansoura',
    'Tanta',
    'Asyut',
    'Fayoum',
    'Zagazig',
    'Ismailia',
    'Kafr El Sheikh',
    'Minya',
    'Damietta',
    'Luxor',
    'Qena',
    'Sohag',
    'Hurghada',
    'Aswan',
    'Qalyubia',
    'Gharbia',
    'Monufia',
    'Sharqia',
    'Beheira',
    'Beni Suef',
    'New Valley',
    'Matruh',
    'Red Sea',
    'North Sinai',
    'South Sinai'
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      setState(() {
        _profileImage = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingScreen()),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Edit Profile',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Center(
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    backgroundColor: const Color(0xffD0FD3E),
                    radius: 85,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 80,
                      backgroundImage: _profileImage != null
                          ? FileImage(_profileImage!)
                          : null,
                      child: _profileImage == null
                          ? const Icon(
                              Icons.person,
                              color: Colors.white,
                              size: 80,
                            )
                          : null,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    onPressed: _pickImage,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            buildTextFieldRow('Name', 'Saied Ahmed', false),
            buildTextFieldRow('Email', 'barbarysaied2@gmail.com', false),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangePassword()),
                );
              },
              child: const Text(
                'Change password',
                style: TextStyle(color: Colors.red, fontSize: 30),
              ),
            ),
            buildDateFieldRow('Date of Birth', '9/06/2002'),
            buildDropdownRow('Country/Region', 'Ismailia'),
            const SizedBox(height: 20),
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
      ),
      bottomNavigationBar: const bottom_tab_bar(),
    );
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

  Widget buildDateFieldRow(String label, String hintText) {
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
          child: InkWell(
            onTap: () => _selectDate(context),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    _selectedDate == null
                        ? hintText
                        : "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                const Icon(
                  Icons.calendar_today,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDropdownRow(String label, String hintText) {
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
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              value: _selectedCity,
              isExpanded: true,
              icon: const Icon(Icons.add_location_outlined, color: Colors.grey),
              dropdownColor: Colors.black,
              style: const TextStyle(color: Colors.white),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCity = newValue!;
                });
              },
              items: _cities.map<DropdownMenuItem<String>>((String city) {
                return DropdownMenuItem<String>(
                  value: city,
                  child: Text(city),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
