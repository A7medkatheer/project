import 'package:flutter/material.dart';
import 'package:flutter_application_1/Top_sources/Top_Sources.dart';
import 'package:flutter_application_1/core/home.dart';

import '../constant/constant.dart';

class Nutritionguide extends StatelessWidget {
  const Nutritionguide({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_circle_left_outlined,
              color: Color(0xffD0FD3E),
              size: 50,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Nutrition Guide See All',
                style: TextStyle(color: Color(0xffD0FD3E), fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopSources(
                              initialIndex: 0,
                            )),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/assets/images/top_protein_s.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopSources(
                              initialIndex: 1,
                            )),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/assets/images/top_carbs_s.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopSources(
                              initialIndex: 4,
                            )),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset(
                    'assets/assets/images/top_fat_s.png',
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopSources(
                              initialIndex: 3,
                            )),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset('assets/assets/images/egg_products.png'),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TopSources(
                              initialIndex: 2,
                            )),
                  );
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      20.0), // Adjust the radius as needed
                  child: Image.asset('assets/assets/images/fat_oil.png'),
                ),
              ),
              const Rate_Us(),
              const bottom_tab_bar(),
            ],
          ),
        ),
      ),
    );
  }
}
