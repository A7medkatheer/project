import 'package:flutter/material.dart';

import '../core/home.dart';

class TheMostImportantTips extends StatelessWidget {
  const TheMostImportantTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
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
              Navigator.push(context,
                  MaterialPageRoute(builder: ((context) => const HomeScreen())));
            },
          ),
        ],
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
            );
          },
          child: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.black,
            size: 50,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Title
            const Text(
              'The most important tips',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 25,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '1. Eat a healthy breakfast?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 200,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'If you exercise in the morning, wake up early enough to  eat breakfast at least one hour before starting your workout. Eat well when you go to exercise.Studies show that eating or drinking carbohydrates before exercise can improve exercise longer or at a higher intensity . if you dont eat, you may feel sluggish or dizzy when you exercise',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '2. Watch the serving size?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 240,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Be careful not to exaggerate the amount of food you eat before exercising. The general guidelines indicate: Big meals. Eat these meals at least 3 to 4 hours before exercising.Small meals or snacks between meals. Eat these meals at least one hour to three hours before exercising. Eating too much before exercising may make you feel lethargic. Also, eating very small amounts of food may not give you the energy you need to feel strong during exercise.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '3. Eat good snacks?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 380,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Most people can eat light foods between meals right before and during exercise. It depends on how you feel. Do what you see fit. Between-meal snacks eaten shortly before exercise wont give you extra energy if your workout lasts less than 60 minutes, but they may prevent distracting hunger pangs. If your workout is longer than 60 minutes, you may benefit from adding carbohydrate-rich food or drinks during your workout. Good snack options include: Energy bars  A banana, apple, or other fresh fruit Yogurt Whipped fruit drink Whole wheat bread or crackers Low-fat granola bar Peanut butter sandwich Sports drink or diluted juice Its important to eat a healthy snack, especially if you plan to exercise several hours after a main meal.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '4. Eat after finishing exercises?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 280,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'To help your muscles recover and replenish lost glycogen stores, eat a meal containing carbohydrates and protein within two hours of finishing your workout if possible. Be sure to eat a light meal if your main meal is more than two hours away. Foods that can be a good choice after exercise include:Yogurt and fruit Peanut butter sandwich Low-fat chocolate milk and pretzels (rings or pretzel sticks) Smoothie for post-workout recovery Turkey meat with whole grain bread and vegetables',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '5. Drink?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 440,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Dont forget to drink fluids. You need enough fluids before and after exercise to help prevent dehydration. To stay adequately hydrated for exercise, the American College of Sports Medicine recommends: Drink approximately 2 to 3 cups (473 to 710 milliliters) of water 2 to 3 hours before exercise. Drink about 1/2 to 1 cup (118 to 237 milliliters) of water every 15 to 20 minutes during exercise. Adjust the amount depending on your body size and weather. Drink approximately 2 to 3 cups (473 to 710 milliliters) of water after exercise for every pound (0.5 kg) of weight you lose during exercise. Water is generally the best way to replace lost fluids. But if you exercise for more than 60 minutes, drink a sports drink. Sports drinks may help maintain your bodys electrolyte balance and give you more energy because they contain carbohydrates.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              '6. What is whey Protein (milk serum)?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 130,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'Whey Protein is a protein extracted from milk. One liter of natural milk contains 30 grams of  protein [24 grams of which are casein protein and 6 grams are whey protein] and it is essential for muscle building',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Suggested foods before exercise:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 270,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'A cup of yogurt decorated with a little fruit and almonds.\n\n.A piece of toast spread with peanut butter.\n\n.A bowl of cereal with skimmed milk.\n\n.Egg and tomato omelet on toast.\n\n.Hummus and cheese with crackers.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Post-workout foods:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xffD0FD3E),
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xff454545),
              ),
              height: 230,
              width: 380,
              padding: const EdgeInsets.all(8.0),
              child: const Text(
                'After exercise, it is preferable for a person’s diet to be characterized by the following: It contains a good amount of protein, from 15 to 25 grams, which depends on the person’s weight, gender, and body type. Consult a doctor or nutritionist. It contains carbohydrates to replace the energy burned by the body. Rich in water, such as fresh water, unsweetened juices, or unsweetened teas, to replace fluids lost during exercise.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
