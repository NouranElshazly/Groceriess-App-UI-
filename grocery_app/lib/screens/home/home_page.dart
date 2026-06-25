import 'package:flutter/material.dart';
import 'package:grocery_app/core/widget/search_feild.dart';
import 'package:grocery_app/screens/home/widgets/home_header.dart';
import 'package:grocery_app/screens/home/widgets/exclusive_offer_lisrview.dart';
import 'package:grocery_app/screens/home/widgets/see_all_row.dart';
import 'package:grocery_app/screens/home/widgets/groceries_listview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: ListView(
            children: [
              SizedBox(height: 20),
              HomeHeader(),
              SizedBox(height: 20),
              SearchFeild(),
              SizedBox(height: 20),
              SeeAllRow(title: "Exclusive Offer"),
              SizedBox(height: 20),
              ExclusiveOfferListView(),
              SizedBox(height: 20),
              SeeAllRow(title: "Best Selling"),
              SizedBox(height: 20),
              ExclusiveOfferListView(),
              SizedBox(height: 20),
              SeeAllRow(title: "Groceries"),
              SizedBox(height: 20),
              GroceriesListview(),
              SizedBox(height: 20),
              ExclusiveOfferListView(),
            ],
          ),
        ),
      ),
    );
  }
}
