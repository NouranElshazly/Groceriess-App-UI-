import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/widgets/product_card.dart';
import 'package:grocery_app/screens/product_details/product_detail.dart';

class ExclusiveOfferListView extends StatelessWidget {
  const ExclusiveOfferListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ProductDetail()),
            );
          },
          child: ProductCard(),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 10),
      ),
    );
  }
}
