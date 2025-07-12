import 'package:flutter/material.dart';
import 'package:tag_land/screens/all_properties.dart';
import 'package:tag_land/screens/profile.dart';
import 'package:tag_land/screens/homepage.dart';

class BottomnavbarWidget extends StatefulWidget {
  const BottomnavbarWidget({super.key});

  @override
  State<BottomnavbarWidget> createState() => _BottomnavbarWidgetState();
}

class _BottomnavbarWidgetState extends State<BottomnavbarWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // List of pages
  final List<Widget> _pages = [
    HomePage(),
    AllProperties(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:_pages[_selectedIndex], // Display the selected page
        
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.blueGrey,
          selectedItemColor: const Color.fromARGB(255, 151, 11, 1),
          selectedFontSize: 15,
          unselectedFontSize: 12,
          unselectedLabelStyle: TextStyle(
            color: Colors.blueGrey,
            fontStyle: FontStyle.italic
          ),
          selectedLabelStyle: TextStyle(
            color: Colors.blueGrey,
            fontStyle: FontStyle.normal
          ),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
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
        ),
      );
  }
}
