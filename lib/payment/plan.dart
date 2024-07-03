import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/core/api/end_ponits.dart';
import 'package:flutter_application_1/pages/core/models/paymeny_model.dart';
import 'package:flutter_application_1/pages/cubit/user_cubit.dart';
import 'package:flutter_application_1/pages/in_body.dart';
import 'package:flutter_application_1/payment/payment_view.dart';
import 'package:flutter_application_1/private/home_private.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../core/training_programs_see_all.dart';

class Plan extends StatelessWidget {
  const Plan({super.key});

  @override
  Widget build(BuildContext context) {
    late String plane = CacheHelper().getData(key: ApiKey.plane);
    late bool ispayment = CacheHelper().getData(key: ApiKey.ispayment);
    return Scaffold(
      backgroundColor: Colors.black,
      body: BlocConsumer<UserCubit, UserState>(
        listener: (context, state) {
          if (state is PaymentSucess) {
            final paymentUrl = state.paymentUrl;

            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => WebViewApp(
                        urlPath: paymentUrl,
                      )),
            );
          } else if (state is PaymentFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Payment Failed'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          return state is PaymentLoading
              ? Container(
                  color: Colors.white,
                  child: const Center(child: CircularProgressIndicator()))
              : Padding(
                  padding: const EdgeInsets.only(top: 10, left: 25),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 60,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()),
                            );
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/assets/images/GymTipc.png',
                              height: 445,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (ispayment == true && plane == "3 Months") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const InBody()),
                              );
                            } else {
                              context
                                  .read<UserCubit>()
                                  .payment(price: "50", plane: "3 Months");
                            }
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/assets/images/feeding.png',
                              height: 445,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        GestureDetector(
                          onTap: () {
                            if (ispayment == true && plane == "oneyear") {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const InBody()),
                              );
                            } else {
                              context
                                  .read<UserCubit>()
                                  .payment(price: "100", plane: "oneyear");
                            }
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(
                              'assets/assets/images/feeding&exercise.png',
                              height: 445,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 300,
                        ),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
