// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinput/pinput.dart';
// import 'package:ui_screens/pages/cache/Forget_password.dart';
// import 'package:ui_screens/pages/cubit/user_cubit.dart';
// import 'package:ui_screens/pages/gender.dart';
// import 'package:ui_screens/pages/core/login.dart';

class Verification extends StatefulWidget {
  const Verification({super.key, required this.email,required this.type});
  final String email;
  final String type;

  @override
  _PinputExampleState createState() => _PinputExampleState();
}

class _PinputExampleState extends State<Verification> {
  final TextEditingController _textEditingController = TextEditingController();
  String _inputText = '';

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
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => ForgetPassword()),
            // );
          },
        ),
      ),
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is VerifyCodeSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Code Verified Successfully'),
              ),
            );
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Login()),
            );
          } else if (state is VerifyCodeFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errMessage),
              ),
            );
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  children: [
                    Text(
                      '    VERIFICATION',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'CHECK YOUR EMAIL WE\'VE SENT \n YOU THE PIN YOUR EMAIL.  ',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Pinput(
                      length: 6,
                      controller: _textEditingController,
                      onCompleted: (value) {
                        setState(() {
                          _inputText = value;
                        });
                      },
                      cursor: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 9),
                            width: 22,
                            height: 2,
                            color:
                                const Color(0xffD0FD3E), // Bottom cursor color
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 220,
                ),
                GestureDetector(
                  onTap: () {
                    if (widget.type == "sendCodeVerfiy") {
                      context.read<UserCubit>().sendCode(email: widget.email);
                    } else if (widget.type == "forgetPasswordSendCode") {
                      context
                          .read<UserCubit>()
                          .sendForgetPasswordCode(email: widget.email);
                    }
                  },
                  child: const Text(
                    'Did you receive any code?',
                    style: TextStyle(color: Color(0xffD0FD3E)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                state is VerifyCodeLoading
                    ? const CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: () {
                          context
                              .read<UserCubit>()
                              .verfiyCode(code: _inputText);
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              const Color(0xffD0FD3E)),
                          padding: WidgetStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 90, vertical: 10)),
                          shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(27))),
                        ),
                        child: const Text(
                          "Verify",
                          style: TextStyle(fontSize: 24, color: Colors.black),
                        ),
                      ),
              ],
            ),
          );
        },
      ),
    );
  }
}
