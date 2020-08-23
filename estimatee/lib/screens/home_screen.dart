import 'package:flutter/material.dart';

import 'pages.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    CustomerPage(),
    EmailPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EstimaTEE'),
      ),
      body: _children[_currentIndex],
      bottomNavigationBar:
          BottomNavigationBar(
            onTap:onTabTapped, 
            currentIndex: _currentIndex, 
            items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                title: new Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.person_outline),
                title: new Text('Customers'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.email),
                title: new Text('Email'),
        ),
      ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
