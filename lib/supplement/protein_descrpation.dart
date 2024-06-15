import 'package:flutter/material.dart';
import 'package:flutter_application_1/supplement/supplement_screen.dart';
// import 'package:ui_screens/supplement/supplement_screen.dart';

import '../core/home.dart';

class ProteinDescrpation extends StatelessWidget {
  const ProteinDescrpation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Protein',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
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
                MaterialPageRoute(builder: (context) => const SupplementScreen()),
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
            children: const [
              Text(
                'Protein and its importance in building muscle:',
 style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD0FD3E),
                    fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'Before we talk about whey protein, we must quickly learn about the benefits of protein for building muscle. Protein is chains of amino acids. Amino acids are the building blocks of all body tissues.\n Protein (from food and supplements) is used to form bones, skin, nails, hair, muscles and cells. Protein also plays a major role in the production of all important enzymes for the body. Eating protein prompts the body to produce amino acids, build muscle, and discourage muscle wasting for long hours. Eating protein leads to increased strength in the gym and faster muscle recovery after exercise.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'What is whey protein?',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD0FD3E),
                    fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'It is a natural nutritional supplement extracted from cow\'s milk after the cheese manufacturing stage and fat extraction. Even other names for whey protein are whey protein or whey protein. Whey protein is sold commercially in powder form, with different flavors such as chocolate, vanilla, strawberry, etc. Most types are low in carbohydrates and fat.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'What are the benefits of whey protein?',
               style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD0FD3E),
                    fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                '1- Whey protein contains proteins of higher quality and nutritional value than eggs, milk, and meat. It is also rich in BCAA or Branched Chain Amino Acids, such as leucine, valine, and isoleucine. 30 grams of whey protein contains 4 grams of glutamine.\n'
                '2- This helps maintain muscle mass while dieting. This does not mean that whey protein is only beneficial for dieters, but it has the same benefits for those who suffer from the problem of thinness and want to increase their increase their weight or muscle mass.\n'
                '3- Whey protein contains low amounts of fats, carbohydrates, and calories. Which makes it ideal for bodybuilders who are on a diet or want to gain weight without gaining large amounts of fat. Some of them use it in the morning, between meals, and after exercise.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Daily Protein Requirement',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD0FD3E),
                    fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'The average person needs 1 gram of net protein per kilogram of body weight. for example,if you weight 70 kilograms,you need 70 grams of net protein per day. As for bodybuilding and muscle builder,the situation varies,as a bodybuilder needs from 1.6 to 2 grams of protein per kilogram of weight. For example, if your weight is 100 kilograms and you engage in bodybuilding you need from 160 to 200 grams of protein per day.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Types of Whey protein',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xffD0FD3E),
                    fontSize: 20),
              ),
              SizedBox(height: 8),
              Text(
                'There are several Types of whey protein, and the main difference between them is the method by which they are processed.\n',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Text(
                'Concentrate: 70-80% protein.it contains some lactose (Milk Sugar) and fat, and has a better taste.\n\n'
                'Isolate : 90% Protein, or higher.It contains less lactose and fat, and lacks many of the beneficial nutrients found . in whey protein concentrate.\n\n'
                'Hydrolyzed : Over 95% protein. This type is absorbed faster and leads to a 28-43% greater increase as in insulin levels than isolate.',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ));
  }
}
