import 'package:flutter/material.dart';
class Layout{
  static Scaffold getContent(BuildContext context,content){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 100,0, 1),
        title: Center(child: Text("oque há na Unama?"),
        ),
      ),
      body: content,
    );
  }
}