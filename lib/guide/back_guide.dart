// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../core/home.dart';

class BackGuide extends StatelessWidget {
  const BackGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Back',
            style: TextStyle(color: Colors.black, fontSize: 28),
          ),
        ),
        elevation: 0,
        backgroundColor: const Color(0xffD0FD3E),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home_outlined,
              color: Colors.black,
              size: 40,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: ((context) => const HomeScreen())),
              );
            },
          ),
        ],
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Single_bar_pull_up.gif',
                  title: 'Single Bar Pull-Up',
                ),
                ItemData(
                  image: 'assets/assets/images/High_pull_rope.gif',
                  title: 'High Pull Rope',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Pull_up_bar_tight.gif',
                  title: 'Pull Up Bar Tight',
                ),
                ItemData(
                  image: 'assets/assets/images/Bar_sms_2.gif',
                  title: 'Bar SMS',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/High_pull_on_the_cable.gif',
                  title: 'High Pull on the cable',
                ),
                ItemData(
                  image: 'assets/assets/images/Trump.gif',
                  title: 'Trump',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Single_pull.gif',
                  title: 'Single Pull',
                ),
                ItemData(
                  image: 'assets/assets/images/Double_dumbbell_pull.gif',
                  title: 'Double Dumbbell Pull',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/His_mind_2.gif',
                  title: 'His Mind',
                ),
                ItemData(
                  image: 'assets/assets/images/Tight_ground_pull.gif',
                  title: 'Tight Ground Pull',
                ),
              ]),
              const SizedBox(height: 10),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const bottom_tab_bar(),
    );
  }

  Widget _buildItemList(BuildContext context, List<ItemData> items) {
    return SizedBox(
      height: 251,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: items.map((item) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: _buildItemContainer(context, item.image, item.title),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildItemContainer(
    BuildContext context,
    String image,
    String title,
  ) {
    bool isTapped = false;

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => DetailScreen(
                  image: image,
                  title: title,
                )));
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        width: isTapped ? 220 : 188,
        height: isTapped ? 235 : 195,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 180,
              height: 195,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Container(
              width: 188,
              height: 30,
              color: const Color(0xFF323232),
              child: Center(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD0FD3E),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemData {
  final String image;
  final String title;

  ItemData({
    required this.image,
    required this.title,
  });
}

class DetailScreen extends StatelessWidget {
  final String image;
  final String title;

  const DetailScreen({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Center(child: Text(title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
