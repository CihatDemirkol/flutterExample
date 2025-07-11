import 'package:flutter/material.dart';
import '../componenat/custom_container.dart';
import '../componenat/custom_button.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;

  Future<void> _handleButtonPress() async {
    setState(() => isLoading = true);

    showDialog(
      context: context,
      barrierDismissible: false, // dokunmayı engeller
      builder: (_) => Center(
        child: CircularProgressIndicator(),
      ),
    );

    await Future.delayed(Duration(seconds: 15)); // 15 saniye bekle

    if (mounted) {
      Navigator.of(context).pop(); // loading dialog'u kapat
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomContainer(
            width: screenWidth * 0.9,
            padding: EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.home, size: 40, color: Colors.blue),
                SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Hoş Geldiniz!',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 6),
                      Text(
                        'Bu, responsive ve ortalanmış reusable bir karttır.',
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 32),

          CustomButton(
            text: isLoading ? "Yükleniyor..." : "Devam Et",
            icon: Icons.arrow_downward,
            onPressed: isLoading ? () {} : _handleButtonPress,
            backgroundColor: Colors.deepPurple,
          ),
        ],
      ),
    );
  }
}
