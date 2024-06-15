import 'package:flutter/material.dart';
import '../constant/constant.dart';

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
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: const Text(
          'Settings',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Account',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileItem(
              icon: Icon(
                Icons.person_2_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Edit Profil',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Support & About',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileItem(
              icon: Icon(
                Icons.credit_card,
                color: Color(0xffD0FD3E),
              ),
              text: 'My Subscribtion',
            ),
            ProfileItem(
              icon: Icon(
                Icons.question_mark_rounded,
                color: Color(0xffD0FD3E),
              ),
              text: 'Help & Support',
            ),
            ProfileItem(
              icon: Icon(
                Icons.info_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Terms and Policies',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Actions',
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            ProfileItem(
              icon: Icon(
                Icons.flag_outlined,
                color: Color(0xffD0FD3E),
              ),
              text: 'Report a problem',
            ),
            ProfileItem(
              icon: Icon(
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

  const ProfileItem({
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
      onTap: () {},
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
