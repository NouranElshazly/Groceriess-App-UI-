import 'package:flutter/material.dart';

class SeeAllRow extends StatelessWidget {
  final String title;
  const SeeAllRow({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            Text(
              "See All ",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff53B175),
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
