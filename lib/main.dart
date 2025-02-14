import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

Color backgroundColor = Color(0xffF4F3FF);
Color cardColor = Color(0xffFFFFFF);
Color primaryColor = Color(0xff6C63FF);
Color textColor = Color(0xff2F2E41);
Color greyColor = Color(0xffCCCCCC);
Color blackColor = Color(0xff060918);

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (_) => BMICalculator(),
    ),
  );
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
