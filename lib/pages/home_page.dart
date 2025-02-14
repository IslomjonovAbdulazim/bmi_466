import 'package:bmi_466/pages/result_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

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
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: GoogleFonts.inter(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Age & Weight
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Age",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: textColor,
                                ),
                              ),
                              Text(
                                "$age",
                                style: GoogleFonts.inter(
                                  fontSize: 60,
                                  fontWeight: FontWeight.w800,
                                  color: primaryColor,
                                  height: 1.2,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: decrementAge,
                                    child: Image.asset(
                                      "assets/minus.png",
                                      height: 30,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: incrementAge,
                                    child: Image.asset(
                                      "assets/plus.png",
                                      height: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: cardColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Weight",
                                style: GoogleFonts.inter(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: textColor,
                                ),
                              ),
                              Text(
                                "$weight",
                                style: GoogleFonts.inter(
                                  fontSize: 60,
                                  fontWeight: FontWeight.w800,
                                  color: primaryColor,
                                  height: 1.2,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: decrementWeight,
                                    child: Image.asset(
                                      "assets/minus.png",
                                      height: 30,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  CupertinoButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: incrementWeight,
                                    child: Image.asset(
                                      "assets/plus.png",
                                      height: 30,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  // Height
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: cardColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Height (CM)",
                          style: GoogleFonts.inter(
                            color: textColor,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "$height",
                          style: GoogleFonts.inter(
                            fontSize: 60,
                            fontWeight: FontWeight.w800,
                            color: primaryColor,
                            height: 1.2,
                          ),
                        ),
                        Slider(
                          min: 50,
                          max: 300,
                          activeColor: primaryColor,
                          inactiveColor: greyColor,
                          value: height.toDouble(),
                          onChanged: (val) {
                            height = val.toInt();
                            setState(() {});
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            children: [
                              Text("50cm"),
                              Spacer(),
                              Text("300cm"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Gender
                  SizedBox(height: 15),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: cardColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "Gender",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: textColor,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Male",
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: textColor,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Switch(
                                value: gender,
                                activeTrackColor: primaryColor,
                                inactiveThumbColor: cardColor,
                                inactiveTrackColor: textColor,
                                onChanged: (val) {
                                  gender = val;
                                  setState(() {});
                                },
                              ),
                            ),
                            Text(
                              "Female",
                              style: GoogleFonts.inter(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: textColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Button
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      fixedSize: Size.fromHeight(55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    onPressed: () {
                      double bmi = weight / (height * height);
                      int main = bmi.toInt();
                      int float = ((bmi - main) * 100).toInt();
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ResultPage(main: main, float: float),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Calculate BMI",
                        style: GoogleFonts.inter(
                          color: cardColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
