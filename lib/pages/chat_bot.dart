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

    if (query.contains("exercise") && query.contains("weight loss")) {
      return "For weight loss, combine regular exercise with a balanced diet. Include cardio exercises like running or cycling and strength training to build muscle. Maintain a calorie deficit, stay hydrated, and get adequate sleep.";
    } else if (query.contains("exercise") && query.contains("muscle gain")) {
      return "To gain muscle, focus on strength training exercises like weight lifting. Eat a high-protein diet, ensure you're consuming more calories than you burn, and get plenty of rest for muscle recovery.";
    } else if (query.contains("fitness") && query.contains("motivation")) {
      return "Staying motivated can be challenging. Set realistic goals, track your progress, find a workout buddy, and mix up your routine to keep it interesting. Remember why you started and celebrate small victories along the way.";
    } else if (query.contains("nutrition") && query.contains("hydration")) {
      return "Nutrition and hydration are crucial for overall health. Eat a balanced diet with a variety of foods, and drink plenty of water. Proper hydration helps regulate body temperature, keeps joints lubricated, and supports overall bodily functions.";
    } else if (query.contains("mental health") && query.contains("exercise")) {
      return "Exercise can significantly improve mental health by reducing stress, anxiety, and depression. Activities like yoga, running, and even a short walk can boost your mood. Consistent exercise promotes overall well-being.";
    } else if (query.contains("sleep") && query.contains("recovery")) {
      return "Sleep is essential for recovery and overall health. Aim for 7-9 hours of quality sleep each night. Establish a regular sleep schedule, create a restful environment, and avoid caffeine and electronic devices before bedtime.";
    } else if (query.contains("cardio") && query.contains("calories")) {
      return "Cardio exercises are great for burning calories and improving cardiovascular health. Examples include running, cycling, swimming, and brisk walking. Aim for at least 150 minutes of moderate-intensity or 75 minutes of high-intensity cardio per week.";
    } else if (query.contains("protein") && query.contains("diet")) {
      return "Protein is crucial for muscle repair and growth. Include lean meats, poultry, fish, beans, lentils, tofu, nuts, and seeds in your diet. Consuming adequate protein throughout the day, especially after workouts, supports muscle recovery.";
    } else if (query.contains("workout plan") && query.contains("beginner")) {
      return "Beginners should start with low-intensity exercises and gradually increase intensity. Focus on learning proper form and building a consistent routine. Activities like walking, light jogging, and basic strength training are good starting points.";
    } else if (query.contains("advanced fitness") &&
        query.contains("training")) {
      return "Advanced fitness enthusiasts can benefit from varied and intense workouts. Incorporate compound lifts, HIIT, and specialized training like plyometrics. Focus on recovery, proper nutrition, and progressively increasing workout intensity.";
    } else if (query.contains("home workouts") && query.contains("equipment")) {
      return "Home workouts can be effective with minimal equipment. Use bodyweight exercises like push-ups, squats, and lunges. Resistance bands, dumbbells, and stability balls can add variety. Ensure proper form and progressively challenge yourself.";
    } else if (query.contains("outdoor activities") &&
        query.contains("mental health")) {
      return "Outdoor activities provide fresh air and a change of scenery, which can boost mental health. Consider hiking, cycling, kayaking, or outdoor sports. These activities can improve mood and provide a full-body workout.";
    } else if (query.contains("body positivity") &&
        query.contains("self-care")) {
      return "Body positivity emphasizes accepting and appreciating all body types. Focus on health and well-being rather than appearance. Avoid negative self-talk, practice self-care, and surround yourself with supportive influences.";
    } else if (query.contains("work-life balance") &&
        query.contains("stress management")) {
      return "Achieving work-life balance involves prioritizing time for both professional and personal activities. Set boundaries, delegate tasks, and make time for self-care, family, and hobbies. Effective time management and stress management techniques are key.";
    } else if (query.contains("flexibility") && query.contains("stretching")) {
      return "Flexibility exercises, such as stretching and yoga, help improve the range of motion of your muscles and joints. Incorporate these exercises into your routine at least 2-3 times a week. Hold each stretch for 15-30 seconds and avoid bouncing.";
    } else if (query.contains("gym etiquette") && query.contains("respect")) {
      return "Gym etiquette includes wiping down equipment after use, re-racking weights, being mindful of your surroundings, and respecting other gym-goers' space and time. Wear appropriate attire and use headphones if listening to music.";
    } else if (query.contains("nutrition") && query.contains("meal timing")) {
      return "Nutrient timing can enhance performance and recovery. Eat a balanced meal with carbs, protein, and fats 2-3 hours before a workout. Post-workout, consume protein and carbs within 30-60 minutes to replenish glycogen and aid muscle repair.";
    } else if (query.contains("family fitness") &&
        query.contains("activities")) {
      return "Family fitness activities promote health and bonding. Try activities like hiking, biking, or playing sports together. Encourage healthy habits by cooking nutritious meals as a family and supporting each other's fitness goals.";
    } else if (query.contains("healthy habits") && query.contains("routine")) {
      return "Healthy habits include regular exercise, balanced nutrition, adequate sleep, and stress management. Gradually incorporate these habits into your daily routine. Consistency is essential for long-term benefits.";
    } else if (query.contains("exercise") &&
        query.contains("nutrition") &&
        query.contains("hydration")) {
      return "Combining exercise, proper nutrition, and hydration is key to overall health. Exercise regularly, eat a balanced diet with a variety of nutrients, and drink plenty of water to stay hydrated.";
    } else if (query.contains("cardio") &&
        query.contains("strength training") &&
        query.contains("balance")) {
      return "Balancing cardio and strength training is important for overall fitness. Cardio improves cardiovascular health, while strength training builds muscle and strength. Include both in your routine for a well-rounded fitness plan.";
    } else if (query.contains("mindfulness") &&
        query.contains("mental health")) {
      return "Mindfulness practices, such as meditation and deep breathing, can significantly improve mental health. They help reduce stress, increase focus, and promote a sense of calm and well-being.";
    } else if (query.contains("exercise") &&
        query.contains("stress management")) {
      return "Exercise is an effective way to manage stress. Physical activity helps release endorphins, which improve mood and reduce stress levels. Incorporate regular exercise into your routine to maintain mental well-being.";
    } else if (query.contains("diet") && query.contains("weight management")) {
      return "Diet plays a crucial role in weight management. Focus on eating a balanced diet with a variety of nutrient-dense foods. Control portion sizes, limit processed foods, and maintain a consistent eating schedule.";
    } else if (query.contains("hydration") && query.contains("exercise")) {
      return "Staying hydrated is essential during exercise. Drink water before, during, and after your workout to maintain optimal performance and prevent dehydration. Adjust your fluid intake based on the intensity and duration of your exercise.";
    } else if (query.contains("protein") && query.contains("muscle recovery")) {
      return "Protein is vital for muscle recovery. Consume protein-rich foods or supplements after your workout to aid in muscle repair and growth. Aim for a mix of complete proteins like meat, dairy, and plant-based options.";
    } else if (query.contains("balanced diet") &&
        query.contains("macronutrients")) {
      return "A balanced diet includes the right proportion of macronutrients: carbohydrates, proteins, and fats. Carbs provide energy, proteins build and repair tissues, and fats support cell function. Adjust your intake based on your activity level and goals.";
    } else if (query.contains("exercise") && query.contains("mental clarity")) {
      return "Exercise can enhance mental clarity and cognitive function. Physical activity increases blood flow to the brain, reduces stress, and promotes the release of endorphins, which improve mood and concentration.";
    } else if (query.contains("fitness") && query.contains("self-esteem")) {
      return "Regular fitness activities can boost self-esteem and confidence. Achieving fitness goals, whether small or large, fosters a sense of accomplishment and can positively impact your overall self-image.";
    } else if (query.contains("posture") &&
        query.contains("strength training")) {
      return "Strength training can improve posture by strengthening the muscles that support your spine. Focus on exercises that target your back, shoulders, and core, such as rows, shoulder presses, and planks.";
    } else if (query.contains("exercise") && query.contains("immune system")) {
      return "Regular moderate exercise can boost your immune system. It promotes good circulation, which allows immune cells to move through the body more effectively. Avoid overtraining, as it can weaken your immunity.";
    } else if (query.contains("sleep quality") && query.contains("exercise")) {
      return "Exercise can improve sleep quality by helping you fall asleep faster and enjoy deeper sleep. Aim for regular physical activity, but avoid vigorous workouts close to bedtime to prevent sleep disturbances.";
    } else if (query.contains("nutrition") && query.contains("skin health")) {
      return "Good nutrition can enhance skin health. Eat a diet rich in antioxidants, vitamins, and minerals. Foods like fruits, vegetables, nuts, and fish provide nutrients that support skin repair and rejuvenation.";
    } else if (query.contains("stress") && query.contains("mindfulness")) {
      return "Mindfulness techniques, such as meditation, yoga, and deep breathing, can effectively reduce stress. These practices help you stay present, manage negative thoughts, and promote relaxation.";
    } else if (query.contains("exercise") && query.contains("longevity")) {
      return "Regular exercise is associated with increased longevity. Physical activity helps maintain a healthy weight, reduces the risk of chronic diseases, and improves overall physical and mental health, contributing to a longer life.";
    } else if (query.contains("nutrition") && query.contains("heart health")) {
      return "A heart-healthy diet includes plenty of fruits, vegetables, whole grains, lean proteins, and healthy fats. Limit saturated fats, trans fats, salt, and added sugars to reduce the risk of heart disease.";
    } else if (query.contains("exercise") && query.contains("bone density")) {
      return "Weight-bearing exercises, such as walking, running, and strength training, can improve bone density and reduce the risk of osteoporosis. Regular physical activity helps maintain strong and healthy bones.";
    } else if (query.contains("hydration") && query.contains("energy levels")) {
      return "Staying hydrated is essential for maintaining energy levels. Dehydration can lead to fatigue and decreased performance. Drink plenty of water throughout the day to keep your body functioning optimally.";
    } else if (query.contains("meal prep") && query.contains("nutrition")) {
      return "Meal prepping helps you stick to a healthy diet. Plan and prepare meals in advance, focusing on balanced, nutrient-dense foods. It saves time, reduces the temptation to eat unhealthy options, and helps control portion sizes.";
    } else if (query.contains("mental health") &&
        query.contains("social support")) {
      return "Social support is crucial for mental health. Surround yourself with supportive friends and family, and seek professional help if needed. Engaging in social activities can reduce stress and enhance emotional well-being.";
    } else if (query.contains("exercise") && query.contains("goal setting")) {
      return "Setting fitness goals can keep you motivated and on track. Make your goals specific, measurable, achievable, relevant, and time-bound (SMART). Regularly review and adjust your goals as needed.";
    } else if (query.contains("nutrition") && query.contains("inflammation")) {
      return "An anti-inflammatory diet can help reduce inflammation in the body. Include foods like berries, fatty fish, leafy greens, nuts, and olive oil. Avoid processed foods, sugary beverages, and trans fats.";
    } else if (query.contains("exercise") &&
        query.contains("mental resilience")) {
      return "Exercise can build mental resilience by improving mood, reducing anxiety, and enhancing stress management. Regular physical activity helps you cope better with challenges and setbacks.";
    } else if (query.contains("fitness") && query.contains("aging")) {
      return "Staying active is important as you age. Exercise helps maintain muscle mass, bone density, balance, and flexibility. Aim for a mix of cardio, strength training, and stretching to support overall health.";
    } else if (query.contains("protein intake") && query.contains("athletes")) {
      return "Athletes may require higher protein intake to support muscle repair and growth. Aim for 1.2-2.0 grams of protein per kilogram of body weight, depending on the intensity and type of training.";
    } else if (query.contains("exercise") && query.contains("joint health")) {
      return "Low-impact exercises, such as swimming, cycling, and yoga, can improve joint health and reduce pain. Regular physical activity helps maintain joint flexibility and strengthens the muscles that support your joints.";
    } else if (query.contains("hydration") &&
        query.contains("exercise performance")) {
      return "Proper hydration is essential for optimal exercise performance. Drink water before, during, and after your workouts. Dehydration can lead to fatigue, decreased coordination, and reduced strength.";
    } else if (query.contains("nutrition") &&
        query.contains("digestive health")) {
      return "A diet rich in fiber, probiotics, and water supports digestive health. Include fruits, vegetables, whole grains, and fermented foods like yogurt and sauerkraut. Stay hydrated and eat regular, balanced meals.";
    } else if (query.contains("mental health") && query.contains("gratitude")) {
      return "Practicing gratitude can improve mental health by shifting focus to positive aspects of life. Keep a gratitude journal, express thanks to others, and regularly reflect on things you're grateful for.";
    } else if (query.contains("exercise") &&
        query.contains("habit formation")) {
      return "Forming an exercise habit requires consistency and patience. Start with small, manageable goals and gradually increase intensity. Schedule workouts, track your progress, and reward yourself for sticking to your plan.";
    } else if (query.contains("nutrition") &&
        query.contains("immune support")) {
      return "A balanced diet rich in vitamins and minerals supports the immune system. Include foods high in vitamin C, vitamin D, zinc, and antioxidants. Examples are citrus fruits, leafy greens, nuts, and seeds.";
    } else if (query.contains("exercise") && query.contains("core strength")) {
      return "Core strength exercises, such as planks, crunches, and leg raises, improve stability and support overall physical performance. Incorporate core workouts into your routine at least 2-3 times a week.";
    } else if (query.contains("hydration") && query.contains("skin health")) {
      return "Proper hydration is crucial for maintaining healthy skin. Drinking enough water helps keep your skin hydrated, improves elasticity, and supports overall skin health. Aim for at least 8 glasses of water a day.";
    } else if (query.contains("fitness") &&
        query.contains("outdoor activities")) {
      return "Outdoor fitness activities, like hiking, cycling, and running, offer physical and mental health benefits. Fresh air and natural surroundings can boost mood and provide a change of scenery from indoor workouts.";
    } else if (query.contains("nutrition") && query.contains("weight loss")) {
      return "For weight loss, focus on a balanced diet with a calorie deficit. Eat nutrient-dense foods, control portion sizes, and avoid processed foods and sugary drinks. Combine healthy eating with regular physical activity.";
    } else if (query.contains("exercise") && query.contains("sleep quality")) {
      return "Regular exercise can improve sleep quality by helping you fall asleep faster and enhancing deep sleep stages. Avoid vigorous workouts close to bedtime to prevent sleep disruptions.";
    } else if (query.contains("hydration") && query.contains("muscle cramps")) {
      return "Staying hydrated helps prevent muscle cramps. Drink plenty of water throughout the day and during exercise. Consuming electrolytes, such as sodium and potassium, can also aid in preventing cramps.";
    } else if (query.contains("exercise") &&
        query.contains("mood improvement")) {
      return "Exercise is a natural mood booster. Physical activity stimulates the production of endorphins, which are chemicals in the brain that act as natural painkillers and mood elevators.";
    } else if (query.contains("fitness") && query.contains("technology")) {
      return "Fitness technology, such as wearable trackers and fitness apps, can help monitor progress, set goals, and stay motivated. Use technology to track your workouts, nutrition, and overall health metrics.";
    } else if (query.contains("nutrition") && query.contains("energy levels")) {
      return "A balanced diet rich in complex carbohydrates, proteins, and healthy fats supports steady energy levels throughout the day. Avoid excessive sugar and caffeine, which can lead to energy crashes.";
    } else if (query.contains("exercise") && query.contains("flexibility")) {
      return "Incorporate stretching and flexibility exercises into your routine to improve range of motion and prevent injuries. Activities like yoga and Pilates are excellent for enhancing flexibility.";
    } else if (query.contains("hydration") && query.contains("headaches")) {
      return "Dehydration is a common cause of headaches. Ensure you drink enough water throughout the day to prevent dehydration-related headaches. Increase fluid intake during hot weather and physical activity.";
    } else if (query.contains("exercise") &&
        query.contains("cholesterol levels")) {
      return "Regular physical activity can help manage cholesterol levels. Aerobic exercises, like running, cycling, and swimming, are particularly effective in raising HDL (good cholesterol) and lowering LDL (bad cholesterol).";
    } else if (query.contains("nutrition") && query.contains("brain health")) {
      return "Foods rich in omega-3 fatty acids, antioxidants, and vitamins support brain health. Include fish, nuts, berries, and leafy greens in your diet to promote cognitive function and protect against age-related decline.";
    } else if (query.contains("exercise") && query.contains("fatigue")) {
      return "Regular exercise can reduce fatigue and increase energy levels. Physical activity improves cardiovascular health, increases endorphins, and enhances overall physical and mental stamina.";
    } else if (query.contains("hydration") &&
        query.contains("exercise recovery")) {
      return "Hydration is essential for exercise recovery. Drinking water after workouts helps replenish fluids lost through sweat and supports muscle recovery. Electrolyte-rich drinks can also aid in rehydration.";
    } else if (query.contains("nutrition") && query.contains("sleep quality")) {
      return "Certain foods can improve sleep quality. Include foods rich in tryptophan, magnesium, and melatonin, such as turkey, almonds, and cherries. Avoid caffeine and heavy meals close to bedtime.";
    } else if (query.contains("exercise") && query.contains("blood pressure")) {
      return "Regular exercise helps manage blood pressure by strengthening the heart and improving circulation. Aim for at least 150 minutes of moderate-intensity exercise or 75 minutes of high-intensity exercise per week.";
    } else if (query.contains("hydration") &&
        query.contains("kidney function")) {
      return "Proper hydration supports kidney function by helping the kidneys remove waste and toxins from the body. Drink plenty of water throughout the day to maintain kidney health.";
    } else if (query.contains("exercise") &&
        query.contains("weight management")) {
      return "Exercise is a key component of weight management. Combine cardio, strength training, and flexibility exercises for a balanced fitness routine. Regular physical activity helps burn calories and build muscle.";
    } else if (query.contains("nutrition") && query.contains("immune system")) {
      return "A balanced diet with vitamins and minerals supports the immune system. Include foods rich in vitamin C, vitamin D, zinc, and antioxidants. Examples are citrus fruits, leafy greens, nuts, and seeds.";
    } else if (query.contains("hydration") && query.contains("joint health")) {
      return "Staying hydrated helps maintain joint health by keeping the cartilage soft and hydrated. Drink plenty of water throughout the day to support joint function and prevent stiffness.";
    } else if (query.contains("exercise") && query.contains("mental focus")) {
      return "Regular exercise can improve mental focus and cognitive function. Physical activity increases blood flow to the brain, reduces stress, and promotes the release of endorphins, which improve mood and concentration.";
    } else if (query.contains("nutrition") && query.contains("bone health")) {
      return "A diet rich in calcium, vitamin D, and other nutrients supports bone health. Include dairy products, leafy greens, and fortified foods in your diet. Regular weight-bearing exercises also help maintain bone density.";
    } else if (query.contains("hydration") && query.contains("digestion")) {
      return "Proper hydration aids digestion by helping break down food and absorb nutrients. Drinking enough water prevents constipation and supports overall digestive health.";
    } else if (query.contains("exercise") && query.contains("confidence")) {
      return "Regular exercise can boost confidence and self-esteem. Achieving fitness goals, whether small or large, fosters a sense of accomplishment and can positively impact your overall self-image.";
    } else if (query.contains("nutrition") && query.contains("mood")) {
      return "A balanced diet can positively affect mood. Include foods rich in omega-3 fatty acids, complex carbohydrates, and vitamins. Avoid excessive sugar and processed foods, which can lead to mood swings.";
    } else if (query.contains("hydration") &&
        query.contains("detoxification")) {
      return "Hydration supports the body's natural detoxification processes. Drinking enough water helps flush out toxins through urine and sweat, supporting kidney and liver function.";
    } else if (query.contains("exercise") && query.contains("mental clarity")) {
      return "Exercise can enhance mental clarity and cognitive function. Physical activity increases blood flow to the brain, reduces stress, and promotes the release of endorphins, which improve mood and concentration.";
    } else if (query.contains("nutrition") && query.contains("longevity")) {
      return "A balanced diet rich in fruits, vegetables, lean proteins, and healthy fats supports longevity. Avoid processed foods, excessive sugar, and trans fats. Maintain a healthy weight and stay active.";
    } else if (query.contains("hydration") &&
        query.contains("immune function")) {
      return "Proper hydration supports immune function by ensuring that your body's cells operate efficiently. Drinking enough water helps maintain the balance of bodily fluids and supports overall health.";
    } else if (query.contains("exercise") &&
        query.contains("balance training")) {
      return "Balance training exercises, such as yoga, tai chi, and single-leg stands, improve stability and coordination. Incorporate these exercises into your routine to enhance overall balance and prevent falls.";
    } else if (query.contains("nutrition") &&
        query.contains("energy") &&
        query.contains("exercise")) {
      return "A balanced diet provides the energy needed for exercise. Include complex carbohydrates, proteins, and healthy fats in your meals. Stay hydrated and eat small, frequent meals to maintain energy levels.";
    } else if (query.contains("hydration") &&
        query.contains("muscle recovery")) {
      return "Proper hydration is essential for muscle recovery. Drinking water after workouts helps replenish fluids lost through sweat and supports muscle recovery. Electrolyte-rich drinks can also aid in rehydration.";
    } else if (query.contains("exercise") && query.contains("aging")) {
      return "Regular exercise is important as you age. It helps maintain muscle mass, bone density, balance, and flexibility. Aim for a mix of cardio, strength training, and stretching to support overall health.";
    } else if (query.contains("nutrition") && query.contains("metabolism")) {
      return "Certain foods can boost metabolism. Include protein-rich foods, spicy foods, and green tea in your diet. Regular exercise, adequate sleep, and staying hydrated also support a healthy metabolism.";
    } else if (query.contains("hydration") &&
        query.contains("exercise performance")) {
      return "Proper hydration is essential for optimal exercise performance. Drink water before, during, and after your workouts. Dehydration can lead to fatigue, decreased coordination, and reduced strength.";
    } else if (query.contains("exercise") && query.contains("fat loss")) {
      return "Exercise is key for fat loss. Combine cardio, strength training, and high-intensity interval training (HIIT) for effective results. Maintain a calorie deficit through a balanced diet and regular physical activity.";
    } else if (query.contains("nutrition") && query.contains("recovery")) {
      return "Nutrition plays a crucial role in recovery. Eat a balanced diet rich in protein, healthy fats, and complex carbohydrates. Include foods with anti-inflammatory properties, such as berries, nuts, and leafy greens.";
    } else if (query.contains("hydration") && query.contains("energy")) {
      return "Staying hydrated is essential for maintaining energy levels. Dehydration can lead to fatigue and decreased performance. Drink plenty of water throughout the day to keep your body functioning optimally.";
    } else if (query.contains("exercise") && query.contains("endurance")) {
      return "To improve endurance, focus on cardiovascular exercises like running, cycling, and swimming. Gradually increase the duration and intensity of your workouts. Consistent training and proper nutrition are key.";
    } else if (query.contains("nutrition") &&
        query.contains("hydration") &&
        query.contains("skin")) {
      return "Good nutrition and hydration can enhance skin health. Eat a diet rich in antioxidants, vitamins, and minerals. Drink plenty of water to keep your skin hydrated and support overall skin health.";
    } else if (query.contains("exercise") && query.contains("stress relief")) {
      return "Exercise is an effective way to manage stress. Physical activity helps release endorphins, which improve mood and reduce stress levels. Incorporate regular exercise into your routine to maintain mental well-being.";
    } else if (query.contains("hydration") &&
        query.contains("nutrition") &&
        query.contains("exercise")) {
      return "Combining exercise, proper nutrition, and hydration is key to overall health. Exercise regularly, eat a balanced diet with a variety of nutrients, and drink plenty of water to stay hydrated.";
    } else {
      return "I'm sorry, I don't have information on that topic. Can you please ask something else or rephrase your question?";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ChatBot',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      _messages[index],
                      style: TextStyle(color: Colors.white),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type a message',
                        hintStyle: TextStyle(color: Colors.white),
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send, color: Colors.white),
                    onPressed: _sendMessage,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ChatBotScreen(),
  ));
}
