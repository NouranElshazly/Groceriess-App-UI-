import 'package:flutter/material.dart';
import 'package:grocery_app/screens/buttom_nav_bar/buttom_nav_bar_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ButtomNavBarScreen(),
    );
  }
}
