import 'package:flutter/material.dart';
import 'package:grocery_app/screens/home/widgets/groceries_card.dart';

class GroceriesListview extends StatelessWidget {
  const GroceriesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GroceriesCard(),
        separatorBuilder: (context, index) => SizedBox(width: 10),
      ),
    );
  }
}
