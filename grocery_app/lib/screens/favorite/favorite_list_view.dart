import 'package:flutter/material.dart';
import 'package:grocery_app/screens/favorite/widget/favorite_card.dart';

class FavoriteListView extends StatelessWidget {
  const FavoriteListView({super.key});

  final List<Map<String, String>> favoriteItems = const [
    {
      'image': 'assets/images/sprite.png',
      'title': 'Sprite Can',
      'subtitle': '325ml, Price',
      'price': '1.50\$',
    },
    {
      'image': 'assets/images/dietcola.png',
      'title': 'Diet Coke',
      'subtitle': '355ml, Price',
      'price': '1.99\$',
    },
    {
      'image': 'assets/images/applejuice.png',
      'title': 'Apple & Grape Juice',
      'subtitle': '2L, Price',
      'price': '15.5\$',
    },
    {
      'image': 'assets/images/cocaola.png',
      'title': 'Coca Cola Can',
      'subtitle': '325ml, Price',
      'price': '4.99\$',
    },
    {
      'image': 'assets/images/pepsi.png',
      'title': 'Pepsi Can',
      'subtitle': '330ml, Price',
      'price': '4.99\$',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemCount: favoriteItems.length,
        separatorBuilder: (context, index) =>
            const Divider(height: 0, thickness: 1, color: Color(0xffE6E6E6)),
        itemBuilder: (context, index) {
          final item = favoriteItems[index];
          return FavoriteCard(
            image: item['image']!,
            title: item['title']!,
            subtitle: item['subtitle']!,
            price: item['price']!,
          );
        },
      ),
    );
  }
}
