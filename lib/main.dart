import 'package:flutter/material.dart';
import 'package:grgwa/Pages/image_slider.dart';
import 'package:grgwa/Pages/page_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Image_slider(),
    );
  }
}
