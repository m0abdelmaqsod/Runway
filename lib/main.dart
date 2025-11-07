import 'package:flutter/material.dart';
import 'package:runway/pages/category_screen.dart';
// import 'package:runway/pages/splash_screen.dart';

void main() {
  runApp(Runway());
}

class Runway extends StatelessWidget {
  const Runway({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryScreen(),
    );
  }
}
