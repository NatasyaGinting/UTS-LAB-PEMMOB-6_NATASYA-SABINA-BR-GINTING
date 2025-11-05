import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const CompScienQuizApp());
}

class CompScienQuizApp extends StatelessWidget {
  const CompScienQuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CompScien Quiz',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Urbanist',
      ),
      home: const SplashScreen(),
    );
  }
}
