import 'package:flutter/material.dart';

class MyBookHome extends StatefulWidget {
  const MyBookHome({super.key});

  @override
  State<MyBookHome> createState() => _MyBookHomeState();
}

class _MyBookHomeState extends State<MyBookHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Text('목록'),
      ),
    );
  }
}
