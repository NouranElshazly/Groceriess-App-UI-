import 'package:flutter/material.dart';
import 'package:grocery_app/screens/explore/widget/explore_card.dart';
import 'package:grocery_app/screens/explore_details/explore_details.dart';

class ExploreListView extends StatelessWidget {
  const ExploreListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => (ExploreDetails())),
            );
          },
          child: ExploreCard(),
        ),

        separatorBuilder: (context, index) => SizedBox(width: 10),
        itemCount: 2,
      ),
    );
  }
}
