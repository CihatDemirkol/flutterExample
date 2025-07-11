import 'package:flutter/material.dart';
import 'scene/layout.dart';
import 'scene/welcome_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Uygulama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/', // İlk açılan sayfa
      routes: {
        '/': (context) => WelcomePage(),
        '/layout': (context) => Layout(),
      },
    );
  }
}
// main.dart