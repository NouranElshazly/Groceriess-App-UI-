import 'package:flutter/material.dart';
import '../Signup/widget/button.dart';
import '../Signup/sign_up.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full screen background image
          SizedBox.expand(
            child: Image.asset("assets/images/onbording.png", fit: BoxFit.fill),
          ),
          // Gradient overlay at bottom
          Positioned.fill(
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.45, 1.0],
                  colors: [
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.85),
                  ],
                ),
              ),
            ),
          ),
          // Content at bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/Group.png", height: 50, width: 50),
                  const SizedBox(height: 16),
                  const Text(
                    "Welcome",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "to our store",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Ger your groceries in as fast as one hour",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUp()),
                      );
                      // Navigate to the next screen (e.g., login or home)
                    },
                    child: Button(text: "Get Started"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
