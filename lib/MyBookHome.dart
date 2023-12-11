import 'package:flutter/material.dart';
import 'package:taskapp/BookHomePage.dart';
import 'AddBookPage.dart';

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
        margin: const EdgeInsets.only(top: 60, left: 35, right: 35),
        child: Column(
          children: [
            Text('보관함', style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black87,
            ),),
            SizedBox(height: 20,),
            Row(
              children: [
                Image.asset('assets/whyfish.jpg', width: 150,),
                SizedBox(width: 35,),
                Image.asset('assets/goo.jpeg', width: 150,),
              ],
            ),
            Text(''),
          ],
        ),
      ),
    );
  }
}
