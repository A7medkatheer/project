import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Password extends StatefulWidget {
  const Password({super.key, required this.email});
  final String email;
  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  GlobalKey<FormState> key = GlobalKey<FormState>();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text(
          'New password',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.black,
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is ResetPasswordSucess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Password Changed Successfully'),
              ),
            );
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Login()));
          } else if (state is ResetPasswordFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errMessage),
              ),
            );
          }
        },
        builder: (context, state) {
          return Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextFieldRow(
                    label: 'Enter Your New Password',
                    hintText: 'new password',
                    obscureText: false,
                    controller: newPasswordController),
                buildTextFieldRow(
                    label: 'Confirm Password',
                    hintText: 'confirm password',
                    obscureText: false,
                    controller: confirmPasswordController),
                const SizedBox(
                  height: 100,
                ),
                Center(
                  child: state is ResetPasswordLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            if (key.currentState!.validate()) {
                              if (newPasswordController.text ==
                                  confirmPasswordController.text) {
                                context.read<UserCubit>().resetPassword(
                                    email: widget.email,
                                    password: newPasswordController.text,
                                    confirmPassword:
                                        confirmPasswordController.text);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Password not match'),
                                  ),
                                );
                              }
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
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
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
          validator: (textValue) {
            if (textValue == null || textValue.isEmpty) {
              return 'required!';
            }
            return null;
          },
        ),
      ),
    ],
  );
}
