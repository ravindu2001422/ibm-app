import 'dart:ui';

import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  final double bmi;

  InfoScreen({required this.bmi});

  String getCategory() {
    if (bmi < 16) return 'Severe undernourishment';
    if (bmi >= 16 && bmi < 17) return 'Medium undernourishment';
    if (bmi >= 17 && bmi < 18.5) return 'Slight undernourishment';
    if (bmi >= 18.5 && bmi < 25) return 'Normal nutrition state';
    if (bmi >= 25 && bmi < 30) return 'Overweight';
    if (bmi >= 30 && bmi < 40) return 'Obesity';
    return 'Pathological obesity';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 125, 141, 170),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 35, 120, 231),
        title: Text(
          'BMI Category',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(
              color: Color.fromARGB(255, 30, 178, 247),
              backgroundColor: Color.fromARGB(255, 82, 82, 82),
              value: bmi / 100,
              strokeWidth: 40,
            ),
            SizedBox(height: 20),
            Text(
              'Your BMI: $bmi',
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 30,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Category: ${getCategory()}',
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
