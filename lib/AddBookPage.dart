import 'package:flutter/material.dart';
import 'package:taskapp/BookHomePage.dart';
import 'package:taskapp/MyBookHome.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({super.key});

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  var _title = "";
  var _review = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( //키보드 입력이 화면 가림 방지 위해 사용.
        child: Container(
          margin: const EdgeInsets.only(top: 50, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                children: [
                  ElevatedButton(
                      child: Text('취소'),
                      onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => BookHomePage()),
                        );
                      },
                      ),
                  SizedBox(width: 200,),
                  ElevatedButton(
                    child: Text('추가'),
                    onPressed: (){},
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Center(child: Image.asset('assets/whyfish.jpg', width: 250,)),
              SizedBox(height: 15,),
              TextField(
                decoration: InputDecoration(
                  labelText: '책 제목',
                ),
                onChanged: (text) {
                  _title = text;
                }
              ),
              SizedBox(height: 20,),
              Text('감상평', style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87,
              ),),
              TextField(
                decoration: InputDecoration(
                  labelText: '감상평 입력'
                ),
                onChanged: (text) {
                  _review = text;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
