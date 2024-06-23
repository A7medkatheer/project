import 'package:flutter/material.dart';

class ChatBotScreen extends StatefulWidget {
  const ChatBotScreen({super.key});

  @override
  _ChatBotScreenState createState() => _ChatBotScreenState();
}

class _ChatBotScreenState extends State<ChatBotScreen> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _messages = [];

  void _sendMessage() {
    if (_controller.text.isEmpty) return;

    setState(() {
      _messages.add("You: ${_controller.text}");
      _messages.add("Bot: ${_getResponse(_controller.text)}");
      _controller.clear();
    });
  }

  String _getResponse(String query) {
    query = query.toLowerCase();

    if (query.contains("exercise")) {
      return "Regular exercise is vital for maintaining good health. It helps in controlling weight, improving mood, and boosting energy. Aim for at least 150 minutes of moderate aerobic activity or 75 minutes of vigorous activity each week, combined with muscle-strengthening exercises on 2 or more days a week.";
    } else if (query.contains("fitness")) {
      return "Fitness encompasses various aspects, including cardiovascular health, muscle strength, flexibility, and mental well-being. To stay fit, it's important to maintain a balanced routine that includes aerobic exercises, strength training, and flexibility workouts. Consistency, variety, and gradual progression are key.";
    } else if (query.contains("feeding") || query.contains("diet")) {
      return "A balanced diet is essential for optimal health. It should include a variety of foods from all food groups: fruits, vegetables, proteins, grains, and dairy. Focus on whole, minimally processed foods, stay hydrated, and control portion sizes. Avoid excessive intake of sugars, saturated fats, and trans fats.";
    } else if (query.contains("protein")) {
      return "Protein is crucial for muscle repair and growth. Good sources of protein include lean meats, poultry, fish, beans, lentils, tofu, nuts, and seeds. It's important to consume adequate protein throughout the day, especially after workouts, to support muscle recovery.";
    } else if (query.contains("cardio")) {
      return "Cardio exercises are great for improving cardiovascular health and burning calories. Examples include running, cycling, swimming, and brisk walking. Aim for at least 150 minutes of moderate-intensity or 75 minutes of high-intensity cardio per week. Mix it up to keep it interesting and challenging.";
    } else if (query.contains("hydration")) {
      return "Staying hydrated is crucial for overall health. Water helps regulate body temperature, keeps joints lubricated, prevents infections, and delivers nutrients to cells. Aim to drink at least 8 glasses of water a day, more if you are physically active or in hot climates.";
    } else if (query.contains("weight loss")) {
      return "Weight loss involves burning more calories than you consume. Focus on a balanced diet with a calorie deficit, regular exercise, and adequate sleep. Incorporate both cardio and strength training exercises. Consistency and patience are key to sustainable weight loss.";
    } else if (query.contains("muscle gain")) {
      return "To gain muscle, combine strength training with a diet rich in protein. Lift heavy weights with low repetitions and gradually increase the weight. Ensure you're consuming more calories than you burn and get plenty of rest for muscle recovery.";
    } else if (query.contains("flexibility")) {
      return "Flexibility exercises, such as stretching and yoga, help improve the range of motion of your muscles and joints. Incorporate these exercises into your routine at least 2-3 times a week. Hold each stretch for 15-30 seconds and avoid bouncing.";
    } else if (query.contains("supplements")) {
      return "Supplements can help fill nutritional gaps but should not replace a balanced diet. Common supplements include multivitamins, protein powders, and omega-3 fatty acids. Consult with a healthcare provider before starting any new supplement regimen.";
    } else if (query.contains("sleep")) {
      return "Sleep is essential for recovery and overall health. Aim for 7-9 hours of quality sleep each night. Establish a regular sleep schedule, create a restful environment, and avoid caffeine and electronic devices before bedtime.";
    } else if (query.contains("mental health")) {
      return "Mental health is as important as physical health. Engage in activities that reduce stress, such as meditation, exercise, and spending time with loved ones. Seek professional help if you're struggling with mental health issues.";
    } else if (query.contains("stress management")) {
      return "Managing stress involves techniques like deep breathing, exercise, adequate sleep, and maintaining social connections. Identify stressors in your life and work on strategies to manage or reduce them.";
    } else if (query.contains("recovery")) {
      return "Recovery is crucial for muscle growth and injury prevention. Incorporate rest days into your routine, get adequate sleep, stay hydrated, and consider activities like stretching, foam rolling, and massage.";
    } else if (query.contains("calories")) {
      return "Caloric intake is the amount of energy you get from food. To maintain weight, consume the same amount of calories you burn. For weight loss, create a caloric deficit, and for muscle gain, aim for a caloric surplus.";
    } else if (query.contains("macro nutrients") || query.contains("macros")) {
      return "Macronutrients include carbohydrates, proteins, and fats. A balanced diet typically includes about 45-65% carbs, 10-35% protein, and 20-35% fats. Adjust these ratios based on your fitness goals.";
    } else if (query.contains("micronutrients")) {
      return "Micronutrients are vitamins and minerals essential for overall health. They support various bodily functions, including energy production, immune function, and bone health. Eat a diverse diet to ensure adequate intake.";
    } else if (query.contains("gym etiquette")) {
      return "Gym etiquette includes wiping down equipment after use, re-racking weights, being mindful of your surroundings, and respecting other gym-goers' space and time. Wear appropriate attire and use headphones if listening to music.";
    } else if (query.contains("workout plan")) {
      return "A good workout plan includes a mix of cardio, strength training, and flexibility exercises. Tailor the plan to your goals, schedule, and fitness level. Gradually increase intensity and vary your routine to prevent plateaus.";
    } else if (query.contains("motivation")) {
      return "Staying motivated can be challenging. Set realistic goals, track your progress, find a workout buddy, and mix up your routine to keep it interesting. Remember why you started and celebrate small victories along the way.";
    } else {
      return "I'm here to help with exercise, fitness, and feeding advice. Ask me anything!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fitness Chat Bot"),
        backgroundColor: const Color(0xffD0FD3E),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(8.0),
              itemCount: _messages.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    _messages[index],
                    style: TextStyle(
                      fontSize: 18,
                      color: _messages[index].startsWith("You") ? Colors.white : Colors.green,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "Ask me about exercise, fitness, or feeding...",
                      hintStyle: TextStyle(color: Colors.white70),
                      border: InputBorder.none,
                    ),
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Colors.white),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
