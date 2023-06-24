import 'package:flutter/material.dart';
import './gradient_container.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GradientContainer(colors: [
          Colors.grey,
          Colors.blue,
        ]),
      ),
    );
  }
}
