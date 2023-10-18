import 'package:flutter/material.dart';
import 'package:player/pages/home_page.dart';
import 'package:player/pages/search_page.dart';
import 'package:player/pages/profile_page.dart';

class bt_Nav extends StatefulWidget {
  @override
  _bt_NavState createState() => _bt_NavState();
}

class _bt_NavState extends State<bt_Nav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_fill_outlined),
            label: 'Player',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
