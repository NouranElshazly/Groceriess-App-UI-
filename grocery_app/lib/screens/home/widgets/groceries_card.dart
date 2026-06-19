import 'package:flutter/material.dart';

class GroceriesCard extends StatelessWidget {
  const GroceriesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 200,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/apple.png",
            height: 60,
            width: 60,
            fit: BoxFit.contain,
          ),
          SizedBox(width: 10),
          Text(
            "Apple",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
