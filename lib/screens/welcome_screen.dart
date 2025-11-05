import 'package:flutter/material.dart';
import 'type_name_screen.dart';
import '../widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2196F3), Color(0xFF42A5F5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'WELCOME',
              style: TextStyle(
                fontFamily: 'Urbanist',
                color: Colors.white,
                fontSize: width * 0.1,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            Image.asset('assets/images/logo_app.png', width: width * 0.5),
            const SizedBox(height: 20),
            Text(
              'CompScien Quiz',
              style: TextStyle(
                fontFamily: 'Urbanist',
                color: Colors.white,
                fontSize: width * 0.07,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 50),
            CustomButton(
              text: 'Start',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TypeNameScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}