// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_application_1/profile/change_password.dart';
import 'package:flutter_application_1/profile/setting_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

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

  @override
  void initState() {
    super.initState();
    loadUserData();
  }

  Future<void> saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', nameController.text);
    await prefs.setString('email', emailController.text);
    if (_selectedDate != null) {
      await prefs.setString('dateOfBirth', _selectedDate.toString());
    }
    await prefs.setString('city', _selectedCity);
  }

  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // nameController.text = prefs.getString('name') ?? '';
    // emailController.text = prefs.getString('email') ?? '';
    String? dateOfBirth = prefs.getString('dateOfBirth');
    if (dateOfBirth != null) {
      _selectedDate = DateTime.parse(dateOfBirth);
    }
    setState(() {
      _selectedCity = prefs.getString('city') ?? 'Ismailia';
    });
  }

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
            Navigator.pop(context);
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
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is UpdataDataSucess) {
            context.read<UserCubit>().getUser();
          } else if (state is UploadProfilePicSucess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Profile Pic Uploaded"),
              ),
            );
          }
        },
        builder: (context, state) {
          var image = CacheHelper().getData(key: ApiKey.profilePic);
          var name = CacheHelper().getData(key: ApiKey.name);
          var email = CacheHelper().getData(key: ApiKey.email);
          return SingleChildScrollView(
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
                            backgroundImage: context
                                        .read<UserCubit>()
                                        .profilePic !=
                                    null
                                ? FileImage(File(
                                    context.read<UserCubit>().profilePic!.path))
                                : NetworkImage(image) as ImageProvider,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            ImagePicker()
                                .pickImage(source: ImageSource.gallery)
                                .then((profilePic) {
                              if (profilePic != null) {
                                context
                                    .read<UserCubit>()
                                    .uploadProfilePic(profilePic);
                              }
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        buildTextFieldRow(
                            label: 'Name',
                            hintText: name,
                            obscureText: false,
                            controller: nameController),
                        buildTextFieldRow(
                            label: 'Email',
                            hintText: email,
                            obscureText: false,
                            controller: emailController),
                        buildDateFieldRow('Date of Birth', '9/06/2002'),
                        buildDropdownRow('Country/Region', 'Ismailia'),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                          style:
                              TextStyle(color: Color(0xffD0FD3E), fontSize: 22),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Center(
                    child: state is UploadProfilePicLoading ||
                            state is UpdataDataLoading ||
                            state is GetUserLoading
                        ? const CircularProgressIndicator()
                        : ElevatedButton(
                            onPressed: () async {
                              if (nameController.text.isNotEmpty ||
                                  emailController.text.isNotEmpty) {
                                context.read<UserCubit>().updataData(
                                      name: nameController.text,
                                      email: emailController.text,
                                    );
                                await saveUserData();
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xffD0FD3E),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 10),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(13),
                              ),
                            ),
                            child: const Text(
                              "Save Change",
                              style:
                                  TextStyle(fontSize: 24, color: Colors.black),
                            ),
                          ),
                  ),
                ],
              ));
        },
      ),
      bottomNavigationBar: const bottom_tab_bar(),
    );
  }

  Widget buildTextFieldRow(
      {required String label,
      required String hintText,
      required bool obscureText,
      required TextEditingController controller}) {
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
          child: TextFormField(
            style: const TextStyle(color: Colors.white),
            obscureText: obscureText,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: Colors.grey),
              border: InputBorder.none,
            ),
            controller: controller,
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
