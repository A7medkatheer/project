// ignore_for_file: deprecated_member_use, must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/core/login.dart';
import 'package:flutter_application_1/pages/core/verification.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:ui_screens/pages/cubit/user_cubit.dart';
// import 'package:ui_screens/pages/core/login.dart';
// import 'package:ui_screens/pages/core/verification.dart';

class Signup extends StatelessWidget {
  Signup({super.key});
  late String email;
  final String type = "sendCodeVerfiy";
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> signUpFormKey = GlobalKey();
    TextEditingController signUpName = TextEditingController();
    TextEditingController signUpEmail = TextEditingController();
    TextEditingController signUpPassword = TextEditingController();
    TextEditingController confirmPassword = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        //   color: Colors.amber[100],
        child: Stack(
          children: [
            Image.asset('assets/assets/images/sign_in.jpg'),
            Center(
              child: BlocConsumer<UserCubit, UserState>(
                listener: (context, state) {
                  if (state is SignUpSuccess) {
                    context.read<UserCubit>().sendCode(email: signUpEmail.text);
                  } else if (state is SendCodeSuccess) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Verification(
                          email: email,
                          type: type,
                        ),
                      ),
                    );
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Code Sent to $email")));
                  } else if (state is SignUpFailure) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(state.errMessage),
                    ));
                  }
                },
                builder: (context, state) {
                  return SingleChildScrollView(
                    child: Form(
                      key: signUpFormKey,
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Login()),
                                  );
                                },
                                child: const Text(
                                  '   Login ',
                                  style: TextStyle(
                                    fontSize: 21,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    //   fontFamily: "myfont"
                                  ),
                                ),
                              ),
                              const Text(
                                '   Sign up ',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  //   fontFamily: "myfont"
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 270,
                          ),
                          const Text(
                            'Hello',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'ENTER YOUR INFORMATION BELOW OR \nLOGIN WITH A OTHER ACCOUNT',
                            style:
                                TextStyle(fontSize: 20, color: Colors.white70),
                          ),
                          const SizedBox(
                            height: 100,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.person,
                                    color: Color(
                                        0xffD0FD3E), //Color.fromARGB(255, 83, 76, 76)
                                  ),
                                  hintText: "Name ",
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: InputBorder.none),
                              controller: signUpName,
                              // validator: ,
                              validator: (textValue) {
                                if (textValue == null || textValue.isEmpty) {
                                  return 'required!';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              decoration: const InputDecoration(
                                  icon: Icon(
                                    Icons.email,
                                    color: Color(
                                        0xffD0FD3E), //Color.fromARGB(255, 83, 76, 76)
                                  ),
                                  hintText: "Email ",
                                  hintStyle: TextStyle(color: Colors.white),
                                  border: InputBorder.none),
                              controller: signUpEmail,
                              onChanged: (textValue) {
                                signUpEmail.text = textValue.trim();
                                signUpEmail.selection =
                                    TextSelection.fromPosition(TextPosition(
                                        offset: signUpEmail.text.length));
                              },
                              validator: (textValue) {
                                if (textValue == null || textValue.isEmpty) {
                                  return 'required!';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffix: Icon(
                                    Icons.visibility,
                                    color: Colors.purple[900],
                                  ),
                                  icon: const Icon(
                                    Icons.lock,
                                    color: Color(0xffD0FD3E),
                                    size: 19,
                                  ),
                                  hintText: " Password ",
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  border: InputBorder.none),
                              controller: signUpPassword,
                              validator: (textValue) {
                                if (textValue == null || textValue.isEmpty) {
                                  return 'required!';
                                } else if (textValue.length < 6) {
                                  return 'password is too short';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(66),
                            ),
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: TextFormField(
                              style: const TextStyle(color: Colors.white),
                              obscureText: true,
                              decoration: InputDecoration(
                                  suffix: Icon(
                                    Icons.visibility,
                                    color: Colors.purple[900],
                                  ),
                                  icon: const Icon(
                                    Icons.lock,
                                    color: Color(0xffD0FD3E),
                                    size: 19,
                                  ),
                                  hintText: " Confirm Password ",
                                  hintStyle:
                                      const TextStyle(color: Colors.white),
                                  border: InputBorder.none),
                              controller: confirmPassword,
                              validator: (textValue) {
                                if (textValue == null || textValue.isEmpty) {
                                  return 'required!';
                                } else if (textValue != signUpPassword.text) {
                                  return 'passwords do not match';
                                }

                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 27),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
                                  // child: SvgPicture.asset(
                                  //   "assets/assets/icons/facebook.svg",
                                  //   color: Colors.white,
                                  //   height: 21,
                                  // ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  padding: const EdgeInsets.all(13),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
                                  // child: SvgPicture.asset(
                                  //   "assets/assets/icons/google-plus.svg",
                                  //   color: Colors.white,
                                  //   height: 21,
                                  // ),
                                ),
                                const SizedBox(
                                  width: 100,
                                ),
                                state is SignUpLoading ||
                                        state is SendCodeLoading
                                    ? const CircularProgressIndicator()
                                    : ElevatedButton(
                                        onPressed: () {
                                          if (signUpFormKey.currentState!
                                              .validate()) {
                                            email = signUpEmail.text;
                                            context.read<UserCubit>().signUp(
                                                name: signUpName.text,
                                                email: email,
                                                password: signUpPassword.text,
                                                confirmPassword:
                                                    confirmPassword.text);
                                          }
                                        },
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color(0xffD0FD3E)),
                                          padding: MaterialStateProperty.all(
                                              const EdgeInsets.symmetric(
                                                  horizontal: 30,
                                                  vertical: 10)),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          27))),
                                        ),
                                        child: const Text(
                                          "Sign Up >",
                                          style: TextStyle(
                                              fontSize: 24,
                                              color: Colors.black),
                                        ),
                                      ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
