import 'package:flutter/material.dart';
import '../compenant/AppBar.dart'; // AppBar bileşenini çağırıyoruz
import '../compenant/BottomNavigationBar.dart'; // BottomNavBar bileşenini çağırıyoruz

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text('🏠 Anasayfa')),
    Center(child: Text('🔍 Ara')),
    Center(child: Text('👤 Profil')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Uygulama Başlığı'), // AppBar çağrıldı
      body: _pages[_selectedIndex], // Seçilen sayfa
      bottomNavigationBar: CustomBottomNavBar( // NavBar çağrıldı
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
