import 'package:flutter/material.dart';
import 'package:grocery_app/core/widget/button.dart';
import 'package:grocery_app/screens/favorite/favorite_list_view.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorite',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1),
        child: Column(
          children: [
            const Expanded(child: FavoriteListView()),
            const SizedBox(height: 16),
            Button(text: 'Add All To Cart '),
          ],
        ),
      ),
    );
  }
}
