import 'package:flutter/material.dart';

class ProfileListView extends StatelessWidget {
  const ProfileListView({super.key});

  final List<Map<String, dynamic>> items = const [
    {'icon': Icons.shopping_bag, 'title': 'Orders', 'subtitle': null},
    {'icon': Icons.person, 'title': 'My Details', 'subtitle': null},
    {'icon': Icons.location_on, 'title': 'Delivery Address', 'subtitle': null},
    {'icon': Icons.credit_card, 'title': 'Payment Methods', 'subtitle': null},
    {'icon': Icons.local_offer, 'title': 'Promo Cord', 'subtitle': null},
    {'icon': Icons.notifications, 'title': 'Notifications', 'subtitle': null},
    {'icon': Icons.help_outline, 'title': 'Help', 'subtitle': null},
    {'icon': Icons.info_outline, 'title': 'About', 'subtitle': null},
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (context, index) =>
          const Divider(height: 0, thickness: 1, color: Color(0xffE6E6E6)),
      itemBuilder: (context, index) {
        final item = items[index];
        final icon = item['icon'] as IconData;
        final title = item['title'] as String;
        final subtitle = item['subtitle'] as String?;
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 8,
          ),
          leading: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xffF4F7F5),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          subtitle: subtitle != null
              ? Text(subtitle, style: const TextStyle(color: Color(0xff7C7C7C)))
              : null,
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Color(0xff7C7C7C),
          ),
          onTap: () {},
        );
      },
    );
  }
}
