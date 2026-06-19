import 'dart:async';
import 'package:flutter/material.dart';
import 'package:grocery_app/screens/welcome/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF53B175),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/splash.png",
              height: 200,
              width: 300,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
