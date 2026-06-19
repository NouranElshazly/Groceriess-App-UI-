import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 173,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Color.fromARGB(197, 235, 221, 221),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Image.asset("assets/images/apple.png")),
              SizedBox(height: 15),
              Text(
                "Red Apple",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 5),
              Text(
                "\$4.99",
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff7C7C7C),
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Add",
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff53B175),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Color(0xff53B175),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Icon(Icons.add, color: Colors.white, size: 20),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
