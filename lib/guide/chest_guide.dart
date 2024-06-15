// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import '../constant/constant.dart';
import '../core/home.dart';

class ChestGuide extends StatelessWidget {
  const ChestGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Chest',
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
                  image: 'assets/assets/images/High_Dumbbell.gif',
                  title: 'High assembly dumbbells',
                ),
                ItemData(
                  image: 'assets/assets/images/Butterfly2.gif',
                  title: 'Butterfly collection',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/pressure.gif',
                  title: 'Pressure',
                ),
                ItemData(
                  image: 'assets/assets/images/Assemble_rope.gif',
                  title: 'Assemble Rope',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Flat_Dumbbells2.gif',
                  title: 'Flat Dumbbells',
                ),
                ItemData(
                  image: 'assets/assets/images/Payment_high_device.gif',
                  title: 'Payment High Device',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Payment_high_device3.gif',
                  title: 'Payment High Device',
                ),
                ItemData(
                  image: 'assets/assets/images/Pay_on_cable.gif',
                  title: 'Pay on cable',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Payment_high_device4.gif',
                  title: 'Payment High Device',
                ),
                ItemData(
                  image: 'assets/assets/images/Payment_flat_device.gif',
                  title: 'Payment Flat Device',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Flat_assembly_dumbbells.gif',
                  title: 'Flat Assembly Dumbbells',
                ),
                ItemData(
                  image: 'assets/assets/images/High_bar_smss.gif',
                  title: 'High Bar SMS',
                ),
              ]),
              _buildItemList(context, [
                ItemData(
                  image: 'assets/assets/images/Flat_barr.gif',
                  title: 'Flat Bar',
                ),
                ItemData(
                  image: 'assets/assets/images/Parallel.gif',
                  title: 'Parallel',
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
