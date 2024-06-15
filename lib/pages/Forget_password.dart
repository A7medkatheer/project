// ignore_for_file: unused_field, file_names, library_private_types_in_public_api, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/core/verification.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:ui_screens/pages/core/login.dart';
// import 'package:ui_screens/pages/login.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  _PinputExampleState createState() => _PinputExampleState();
}

class _PinputExampleState extends State<ForgetPassword> {
  final TextEditingController forgetPasswordEmail = TextEditingController();
  final GlobalKey<FormState> key = GlobalKey();

  final String _inputText = '';
  late String email = '';
  final String type = "forgetPasswordSendCode";

  @override
  // void dispose() {
  //   forgetPasswordEmail.dispose();
  //   super.dispose();
  // }

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
      body: SingleChildScrollView(
        child: Form(
          key: key,
          child: BlocConsumer<UserCubit, UserState>(
            listener: (context, state) {
              if (state is SendForgetPassCodeSucess) {
                // Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Verification(
                      type: type,
                      email: email,
                    ),
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Code Sent to $email")),
                );
              } else if (state is SendForgetPassCodeFailure) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(state.errMessage),
                  ),
                );
              }
              // else {
              // state is SendForgetPassCodeLoading;
              // }
            },
            builder: (context, state) {
              return Column(
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
                        border: InputBorder.none,
                      ),
                      controller: forgetPasswordEmail,
                      onChanged: (textValue) {
                        forgetPasswordEmail.text = textValue.trim();
                        forgetPasswordEmail.selection =
                            TextSelection.fromPosition(TextPosition(
                                offset: forgetPasswordEmail.text.length));
                      },
                      validator: (textValue) {
                        if (textValue == null || textValue.isEmpty) {
                          return 'required!';
                        }
                        return null;
                      },
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
                  state is SendForgetPassCodeLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            if (key.currentState!.validate()) {
                              email = forgetPasswordEmail.text;
                              context
                                  .read<UserCubit>()
                                  .sendForgetPasswordCode(email: email);
                            }
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                const Color(0xffD0FD3E)),
                            padding: MaterialStateProperty.all(
                                const EdgeInsets.symmetric(
                                    horizontal: 90, vertical: 10)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(27))),
                          ),
                          child: const Text(
                            "Send",
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                        ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
