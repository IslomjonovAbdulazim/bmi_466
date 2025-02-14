import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';

class ResultPage extends StatelessWidget {
  final int main;
  final int float;

  const ResultPage({
    super.key,
    required this.main,
    required this.float,
  });

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
    );
  }
}
