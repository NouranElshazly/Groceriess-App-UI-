import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset("assets/images/Group.png", width: 30, height: 40),
        ),
        const SizedBox(height: 20),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on),
            Text(
              "Dhaka, Banassre",
              style: TextStyle(
                fontSize: 18,
                color: Color(0xff4C4F4D),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
