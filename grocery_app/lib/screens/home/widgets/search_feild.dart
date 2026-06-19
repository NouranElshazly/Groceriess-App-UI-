import 'package:flutter/material.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
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
        ),
      ],
    );
  }
}
