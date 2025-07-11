import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../componenat/custom_button.dart'; // CustomButton bileşeni burada tanımlı

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  File? _imageFile;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imageFile = File(pickedFile.path);
      });
    }
  }

  void _onEditProfilePressed() {
    // Buraya butona basıldığında yapılacak işlemi ekleyebilirsin
    print('Profili Düzenle butonuna basıldı');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Center(
              child: GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey[300],
                  backgroundImage:
                      _imageFile != null ? FileImage(_imageFile!) : null,
                  child: _imageFile == null
                      ? Icon(Icons.person, size: 60, color: Colors.grey[700])
                      : null,
                ),
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Ad Soyad',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Kullanıcı rolü veya açıklama',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
            SizedBox(height: 32),
            CustomButton(
              text: 'Profili Düzenle',
              icon: Icons.edit,
              onPressed: _onEditProfilePressed,
              backgroundColor: Colors.blueAccent,
              textColor: Colors.white,
              fontSize: 16,
              iconSize: 28,
              borderRadius: 16,
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            ),
          ],
        ),
      ),
    );
  }
}


