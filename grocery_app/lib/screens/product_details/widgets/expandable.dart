import 'package:flutter/material.dart';

class Expandable extends StatefulWidget {
  final String text;
  final String description;
  const Expandable({super.key, required this.text, required this.description});

  @override
  State<Expandable> createState() => _ExpandableState();
}

class _ExpandableState extends State<Expandable> {
  bool showMore = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: InkWell(
            onTap: () {
              setState(() {
                showMore = !showMore;
              });
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.text,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff181725),
                  ),
                ),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Color(0xff181725),
                  size: 24,
                ),
              ],
            ),
          ),
        ),
        if (showMore)
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              widget.description,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color(0xff7C7C7C),
              ),
            ),
          ),
        Divider(height: 1, thickness: 1, color: Color(0xffE2E2E2)),
      ],
    );
  }
}
