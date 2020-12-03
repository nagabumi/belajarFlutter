import 'package:belajarFlutter/screens/pages/dompet_page.dart';
import 'package:belajarFlutter/screens/pages/menu_page.dart';
import 'package:belajarFlutter/screens/pages/pesanan_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0;
  List<Widget> _widgetOption = <Widget>[
    DompetPage(),
    MenuPage(),
    PesananPage()
  ];

  void _onIndexTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOption.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.wallet_travel), label: 'Dompet'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Pesanan'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple[200],
        onTap: _onIndexTapped,
      ),
    );
  }
}
