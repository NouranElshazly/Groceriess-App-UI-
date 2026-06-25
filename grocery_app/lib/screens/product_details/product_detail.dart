import 'package:flutter/material.dart';
import 'package:grocery_app/screens/product_details/widgets/product_details_header.dart';
import 'package:grocery_app/screens/product_details/widgets/expandable.dart';
import 'package:grocery_app/core/widget/button.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ProductDetailsHeader(),
          SizedBox(height: 30.5),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Naturel Red Apple",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff181725),
                  ),
                ),
                Icon(Icons.favorite_border, color: Color(0xff53B175), size: 24),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "1kg, Price",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff7C7C7C),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      child: Text(
                        "−",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xffE2E2E2)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "1",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff181725),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    GestureDetector(
                      child: Text(
                        "+",
                        style: TextStyle(
                          fontSize: 24,
                          color: Color(0xff53B175),
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  "\$4.99",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 30.5),
          Expandable(
            text: "Product Detail",
            description:
                "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
          ),
          SizedBox(height: 26),
          Expandable(
            text: "Nutritions",
            description:
                "Energy 52kcal, Carbohydrates 14g, Protein 0.3g, Total Fat 0.2g, Dietary Fiber 2.4g.",
          ),
          SizedBox(height: 26),
          Expandable(
            text: "Review",
            description:
                "This is the best apple I have ever tasted. It is so juicy and sweet. I will definitely buy it again.",
          ),
          Button(text: "Add to Cart"),
        ],
      ),
    );
  }
}
