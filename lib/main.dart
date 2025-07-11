import 'package:flutter/material.dart';
import 'scene/LayoutPage.dart'; // LayoutPage dosyanı import et

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LayoutPage(), // Buraya LayoutPage çağrılıyor!
    );
  }
}
