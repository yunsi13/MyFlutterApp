import 'package:flutter/material.dart';
import 'package:taskapp/AddBookPage.dart';
import 'package:taskapp/MyBookHome.dart';

class BookHomePage extends StatefulWidget {
  const BookHomePage({super.key});

  @override
  State<BookHomePage> createState() => _BookHomePageState();
}

class _BookHomePageState extends State<BookHomePage> {
  var _index = 0;
  var _pages = [
    MyBookHome(),
    AddBookPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _index = index;
          });
          },
        currentIndex: _index,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_sharp), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'add'),
        ],
      ),
    );
  }
}
