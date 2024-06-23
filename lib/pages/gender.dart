import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/age.dart';
import 'package:flutter_application_1/pages/core/login.dart';

class GenderSelection extends StatefulWidget {
  GenderSelection({Key? key}) : super(key: key);

  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String backgroundImage = 'assets/assets/images/Gender.jpg';
  String? selectedGender;

  void selectGender(String gender) {
    setState(() {
      selectedGender = gender;
      if (gender == "Male") {
        backgroundImage = 'assets/assets/images/Gender.jpg';
      } else if (gender == "Female") {
        backgroundImage = 'assets/assets/images/girl2.png';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(backgroundImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50),
                    const Text(
                      'TELL US ABOUT YOURSELF!',
                      style: TextStyle(color: Colors.white, fontSize: 28),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'TO GIVE YOU A BETTER EXPERIENCE WE NEED\nTO KNOW YOUR GENDER',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 150),
                    GestureDetector(
                      onTap: () => selectGender("Male"),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedGender == "Male"
                              ? const Color(0xffD0FD3E)
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Male',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => selectGender("Female"),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: selectedGender == "Female"
                              ? const Color(0xffD0FD3E)
                              : Colors.grey,
                        ),
                        child: const Center(
                          child: Text(
                            'Female',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context); // Go back to previous screen
                  },
                  child: const Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Color(0xffD0FD3E),
                    size: 60,
                  ),
                ),
                const SizedBox(width: 190),
                ElevatedButton(
                  onPressed: () {
                    if (selectedGender != null) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Age(gender: selectedGender!),
                        ),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Select Gender'),
                          content: const Text('Please select your gender.'),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0xffD0FD3E)),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 10)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  child: const Text(
                    " Next > ",
                    style: TextStyle(fontSize: 24, color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
