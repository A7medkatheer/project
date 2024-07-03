import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

import '../core/home.dart';
import '../pages/cache/cache_helper.dart';
import '../pages/core/api/end_ponits.dart';

class WorkoutSet {
  int setNumber;
  bool isDone;
  TextEditingController weightController;
  TextEditingController repsController;

  WorkoutSet({
    required this.setNumber,
    this.isDone = false,
  })  : weightController = TextEditingController(),
        repsController = TextEditingController();

  Map<String, dynamic> toJson() {
    return {
      'setNumber': setNumber,
      'isDone': isDone,
      'weight': weightController.text,
      'reps': repsController.text,
    };
  }

  factory WorkoutSet.fromJson(Map<String, dynamic> json) {
    WorkoutSet set = WorkoutSet(setNumber: json['setNumber']);
    set.isDone = json['isDone'];
    set.weightController.text = json['weight'];
    set.repsController.text = json['reps'];
    return set;
  }
}

class CustomTargetPage extends StatefulWidget {
  final String exerciseName;
  final String Gifimage;

  const CustomTargetPage(
      {super.key, required this.exerciseName, required this.Gifimage});

  @override
  _CustomTargetPageState createState() => _CustomTargetPageState();
}

class _CustomTargetPageState extends State<CustomTargetPage> {
  List<WorkoutSet> sets = [];
  bool is_paid = false;
  late bool ispayment;

  @override
  void initState() {
    super.initState();
    _loadPaymentStatus();
    _loadSets();
  }

  Future<void> _loadPaymentStatus() async {
    ispayment = CacheHelper().getData(key: ApiKey.ispayment);
    setState(() {
      is_paid = ispayment;
    });
  }

  Future<void> _loadSets() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? setsJson = prefs.getString('workoutSets');
    if (setsJson != null) {
      List<dynamic> setsList = jsonDecode(setsJson);
      sets = setsList.map((set) => WorkoutSet.fromJson(set)).toList();
      setState(() {});
    }
  }

  Future<void> _saveSets() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<Map<String, dynamic>> setsList =
        sets.map((set) => set.toJson()).toList();
    await prefs.setString('workoutSets', jsonEncode(setsList));
  }

  void _addSet() {
    setState(() {
      sets.add(WorkoutSet(setNumber: sets.length + 1));
      _saveSets();
    });
  }

  void _removeSet(WorkoutSet set) {
    setState(() {
      sets.remove(set);
      for (int i = 0; i < sets.length; i++) {
        sets[i].setNumber = i + 1;
      }
      _saveSets();
    });
  }

  void _toggleDone(WorkoutSet set, bool? value) {
    setState(() {
      set.isDone = value ?? false;
      _saveSets();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Center(
          child: Text(
            widget.exerciseName,
            style: const TextStyle(color: Colors.black, fontSize: 28),
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
                  MaterialPageRoute(
                      builder: ((context) => const HomeScreen())));
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
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  widget.Gifimage,
                  width: 480,
                  height: 600,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),
              // const Text(
              //   'Target Muscle',
              //   style: TextStyle(fontSize: 32, color: Colors.white),
              // ),
              // const SizedBox(height: 25),
              // const Text(
              //   'Pectoralis Major Muscle',
              //   style: TextStyle(fontSize: 24, color: Colors.white70),
              // ),
              // const SizedBox(height: 25),
              // const Text(
              //   'Synergistic Muscles',
              //   style: TextStyle(fontSize: 32, color: Colors.white),
              // ),
              // const SizedBox(height: 25),
              // const Text(
              //   'Chest Muscle : Primary Impact\n              Triceps Muscle \n         Front Deltoid Muscles',
              //   style: TextStyle(fontSize: 24, color: Colors.white70),
              // ),
              const SizedBox(height: 25),
              if (is_paid) // Conditionally render the buttons and table
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton.icon(
                        onPressed: _addSet,
                        icon: const Icon(Icons.add),
                        label: const Text('Add Set'),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            sets = [];
                            _saveSets();
                          });
                        },
                        child: const Text('Clear All'),
                      ),
                    ],
                  ),
                ),
              const SizedBox(height: 10),
              if (is_paid)
                ListView(
                  shrinkWrap: true,
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  children: [
                    Table(
                      columnWidths: const {
                        0: FlexColumnWidth(1),
                        1: FlexColumnWidth(1),
                        2: FlexColumnWidth(2),
                        3: FlexColumnWidth(2),
                        4: FlexColumnWidth(1),
                      },
                      border: TableBorder.all(color: Colors.white, width: 1),
                      children: [
                        TableRow(
                          decoration: const BoxDecoration(color: Colors.grey),
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Done',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Set',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Weight (Kg)',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Reps',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Remove',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                        ...sets.map((set) {
                          return TableRow(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Checkbox(
                                  value: set.isDone,
                                  onChanged: (bool? value) {
                                    _toggleDone(set, value);
                                  },
                                  activeColor: Colors.green,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  set.setNumber.toString(),
                                  style: const TextStyle(color: Colors.white),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: set.weightController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Weight',
                                    hintStyle: TextStyle(color: Colors.white70),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextField(
                                  controller: set.repsController,
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Reps',
                                    hintStyle: TextStyle(color: Colors.white70),
                                  ),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: IconButton(
                                  icon: const Icon(Icons.delete,
                                      color: Colors.red),
                                  onPressed: () {
                                    _removeSet(set);
                                  },
                                ),
                              ),
                            ],
                          );
                        }).toList(),
                      ],
                    ),
                  ],
                ),
              const SizedBox(height: 20),
              if (is_paid)
                ElevatedButton(
                  onPressed: _saveSets,
                  child: const Text('SAVE'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffD0FD3E),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 50, vertical: 15),
                    textStyle: const TextStyle(fontSize: 20),
                  ),
                ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
