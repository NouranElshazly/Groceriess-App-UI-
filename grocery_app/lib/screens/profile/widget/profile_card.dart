import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String email;
  final String imageAsset;
  final VoidCallback? onEdit;

  const ProfileCard({
    super.key,
    this.name = 'Nouran Elshazly',
    this.email = 'nouranelshazly19@gmail.com',
    this.imageAsset = 'assets/images/onbording.png',
    this.onEdit,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Row(
        children: [
          CircleAvatar(radius: 30, backgroundImage: AssetImage(imageAsset)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  email,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xff7C7C7C),
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            onPressed: onEdit,
            icon: const Icon(Icons.edit, color: Color(0xff53B175)),
          ),
        ],
      ),
    );
  }
}
