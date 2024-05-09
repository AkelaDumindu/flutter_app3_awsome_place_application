import 'package:flutter/material.dart';
import 'package:flutter_awesome_place_app/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

@override
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter awsome place app",
      home: HomePage(),
    );
  }
}
