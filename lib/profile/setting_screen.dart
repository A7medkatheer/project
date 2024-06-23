import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/home.dart';
import 'package:flutter_application_1/onBoardingScreens/Splash.dart';
import 'package:flutter_application_1/pages/cache/cache_helper.dart';
import 'package:flutter_application_1/pages/welcome.dart';
import 'package:flutter_application_1/payment/plan.dart';
import 'package:flutter_application_1/profile/pirvacy_policy.dart';
import 'package:flutter_application_1/profile/profile_page.dart';
import '../constant/constant.dart';
import 'connect_with_us.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Account',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
              child: const ProfileItem(
                icon: Icon(
                  Icons.person_2_outlined,
                  color: Color(0xffD0FD3E),
                ),
                text: 'Edit Profil',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Support & About',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Plan()),
                );
              },
              child: const ProfileItem(
                icon: Icon(
                  Icons.credit_card,
                  color: Color(0xffD0FD3E),
                ),
                text: 'My Subscribtion',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConnectWithUs()),
                );
              },
              child: const ProfileItem(
                icon: Icon(
                  Icons.question_mark_rounded,
                  color: Color(0xffD0FD3E),
                ),
                text: 'Help & Support',
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PirvacyPolicy()),
                );
              },
              child: const ProfileItem(
                icon: Icon(
                  Icons.info_outlined,
                  color: Color(0xffD0FD3E),
                ),
                text: 'Terms and Policies',
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Actions',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConnectWithUs()),
                );
              },
              child: const ProfileItem(
                icon: Icon(
                  Icons.flag_outlined,
                  color: Color(0xffD0FD3E),
                ),
                text: 'Report a problem',
              ),
            ),
            ProfileItem(
              onTap: () {
                // CacheHelper cacheHelper = CacheHelper();
                // cacheHelper.clearData();

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const Splash()),
                );
              },
              icon: const Icon(
                Icons.logout_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Log out',
            ),
          ],
        ),
      ),
      bottomNavigationBar: const bottom_tab_bar(),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final Icon icon;
  final String text;
  final Color backgroundColor;
  final double width;
  final double height;
  //final String PageLink;
  final double horizontalPadding;
  final void Function()? onTap;

  const ProfileItem({
    this.onTap,
    required this.icon,
    required this.text,
    // required this.PageLink,
    this.backgroundColor = const Color.fromARGB(255, 46, 54, 58),
    this.width = 380,
    this.height = 47,
    this.horizontalPadding = 8.0,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(builder: (context) => PageLink()),
      //   );
      // },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: EdgeInsets.all(horizontalPadding),
          child: Row(
            children: [
              icon,
              const SizedBox(width: 50),
              Text(
                text,
                style: const TextStyle(color: Colors.white, fontSize: 17),
              )
            ],
          ),
        ),
      ),
    );
  }
}
