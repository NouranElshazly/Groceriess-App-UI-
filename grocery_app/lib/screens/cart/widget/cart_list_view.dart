import 'package:flutter/material.dart';
import 'package:grocery_app/screens/cart/widget/cart_card.dart';

class CartListView extends StatelessWidget {
  const CartListView({super.key});

  final List<Map<String, String>> cartItems = const [
    {
      'image': 'assets/images/apple.png',
      'title': 'Red Apple ',
      'subtitle': '1kg, Price',
      'price': '4.99\$',
    },
    {
      'image': 'assets/images/egg.png',
      'title': 'Egg Chicken Red',
      'subtitle': '4pcs, Price',
      'price': '1.99\$',
    },
    {
      'image': 'assets/images/bananas.png',
      'title': 'Organic Bananas',
      'subtitle': '12kg, Price',
      'price': '3.00\$',
    },
    {
      'image': 'assets/images/apple.png',
      'title': 'Ginger',
      'subtitle': '250gm, Price',
      'price': '2.99\$',
    },
    {
      'image': 'assets/images/ginger.png',
      'title': 'Ginger',
      'subtitle': '250gm, Price',
      'price': '2.99\$',
    },
    {
      'image': 'assets/images/ginger.png',
      'title': 'Ginger',
      'subtitle': '250gm, Price',
      'price': '2.99\$',
    },
    {
      'image': 'assets/images/apple.png',
      'title': 'Ginger',
      'subtitle': '250gm, Price',
      'price': '2.99\$',
    },
    {
      'image': 'assets/images/ginger.png',
      'title': 'Ginger',
      'subtitle': '250gm, Price',
      'price': '2.99\$ ',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cartItems.length,
      separatorBuilder: (context, index) =>
          const Divider(height: 0, thickness: 1, color: Color(0xffE6E6E6)),
      itemBuilder: (context, index) {
        final item = cartItems[index];
        return CartCard(
          image: item['image']!,
          title: item['title']!,
          subtitle: item['subtitle']!,
          price: item['price']!,
        );
      },
    );
  }
}
