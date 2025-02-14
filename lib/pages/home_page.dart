import 'package:bmi_466/pages/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int age = 30;
  int weight = 80;
  int height = 180;
  bool gender = true;

  void incrementAge() {
    if (age == 150) return;
    age++;
    setState(() {});
  }

  void decrementAge() {
    if (age == 1) return;
    age--;
    setState(() {});
  }

  void incrementWeight() {
    if (weight == 250) return;
    weight++;
    setState(() {});
  }

  void decrementWeight() {
    if (weight == 1) return;
    weight--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Age & Weight

            // Height

            // Gender

            // Button
            ElevatedButton(
              onPressed: () {
                double bmi = weight / (height * height);
                int main = bmi.toInt();
                int float = ((bmi - main) * 100).toInt();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(main: main, float: float),
                  ),
                );
              },
              child: Text("Calculate BMI"),
            ),
          ],
        ),
      ),
    );
  }
}
