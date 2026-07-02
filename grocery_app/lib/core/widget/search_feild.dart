import 'package:flutter/material.dart';

class SearchFeild extends StatelessWidget {
  final VoidCallback? onFilterTap;

  const SearchFeild({super.key, this.onFilterTap});

  @override
  Widget build(BuildContext context) {
    final field = TextFormField(
      decoration: InputDecoration(
        hintText: "Search for products",
        fillColor: Color(0xffF2F3F2),
        filled: true,
        prefixIcon: Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
      ),
    );

    if (onFilterTap == null) {
      return Column(children: [field]);
    }

    return Row(
      children: [
        Expanded(child: field),
        const SizedBox(width: 12),
        InkWell(
          borderRadius: BorderRadius.circular(15),
          onTap: onFilterTap,
          child: Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: const Color(0xff53B175),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Icon(Icons.tune, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
