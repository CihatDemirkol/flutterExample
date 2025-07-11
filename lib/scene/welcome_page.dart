import 'package:flutter/material.dart';
import '../componenat/custom_button.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hoş Geldiniz!",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 24),
            CustomButton(
              text: "Uygulamaya Başla",
              icon: Icons.play_arrow,
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/layout');
              },
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
