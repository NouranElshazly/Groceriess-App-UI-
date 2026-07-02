import 'package:flutter/material.dart';
import 'package:grocery_app/core/widget/search_feild.dart';
import 'package:grocery_app/screens/explore/filters_screen.dart';
import 'package:grocery_app/screens/explore/widget/explore_list_view.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Find Products',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: ListView(
          children: [
            SizedBox(height: 30),
            SearchFeild(
              onFilterTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FiltersScreen()),
                );
              },
            ),
            SizedBox(height: 20),
            ExploreListView(),
            SizedBox(height: 15),
            ExploreListView(),
            SizedBox(height: 15),
            ExploreListView(),
            SizedBox(height: 15),
            ExploreListView(),
          ],
        ),
      ),
    );
  }
}
