import 'package:flutter/material.dart';

import '../pages/page1.dart';
import '../pages/page2.dart';
import '../pages/page3.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = <Widget>[
    const page1(),
    const page2(),
    const page3(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material App Bar"),
      ),
      body: _pages[_selectedIndex], // Mostrará la página correspondiente
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // ✅ Icono corregido
            label: 'page1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business), // ✅ Icono corregido
            label: 'page2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school), // ✅ Icono corregido
            label: 'page3',
          ),
        ],
      ),
    );
  }
}
