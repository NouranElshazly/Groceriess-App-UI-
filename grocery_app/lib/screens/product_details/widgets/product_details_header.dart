import 'package:flutter/material.dart';

class ProductDetailsHeader extends StatelessWidget {
  const ProductDetailsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 371,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xffF2F3F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios, color: Colors.black),
                ),
                Icon(Icons.ios_share, color: Colors.black),
              ],
            ),
            SizedBox(height: 50),
            Image.asset(
              "assets/images/apple.png",
              height: 199,
              width: 329,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
