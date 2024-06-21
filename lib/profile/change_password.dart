import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_application_1/profile/profile_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _PasswordState();
}

class _PasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController oldPasswordController = TextEditingController();
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
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
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is PasswordSucess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Password Changed Successfully'),
              ),
            );
            Navigator.pop(context);
          } else if (state is PasswordFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.errMessage),
              ),
            );
          }
        },
        builder: (context, state) {
          return Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextFieldRow(
                    label: 'Enter Your Old Password',
                    hintText: 'old password',
                    obscureText: false,
                    controller: oldPasswordController),
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
                  child: state is PasswordLoading
                      ? const CircularProgressIndicator()
                      : ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              context.read<UserCubit>().changePassword(
                                    oldPassword: oldPasswordController.text,
                                    password: newPasswordController.text,
                                    confirmPassword:
                                        confirmPasswordController.text,
                                  );
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

Widget buildTextFieldRow({
  required String label,
  required String hintText,
  required bool obscureText,
  required TextEditingController controller,
}) {
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
          validator: (value) {
            if (value!.isEmpty) {
              return 'required';
            }
            return null;
          },
        ),
      ),
    ],
  );
}
