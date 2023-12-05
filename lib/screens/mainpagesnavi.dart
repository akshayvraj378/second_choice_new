import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:second_choice_new/screens/profilepage.dart';
import 'package:second_choice_new/screens/settings_page.dart';

import 'homemain.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(), // Replace YourHomePage() with your actual pages
    Prof(),
    Seti(),
  ];

  @override
  Widget build(BuildContext context) {
    return
      CurvedNavigationBar(
        index: _currentIndex,
        color: Colors.grey,
        backgroundColor: Colors.black,
        height: 55,
        items: const <Widget>[
          Icon(Icons.home),
          Icon(Icons.person_outline),
          Icon(Icons.favorite_border),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      );

  }
}
