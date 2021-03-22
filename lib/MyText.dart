

import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("بسم الله الرحمن الرحيم"),
      ),
      body: Container(
        alignment: Alignment.center,
        
        child: Text(
          "Вот мой текст",
          style: TextStyle(fontStyle: FontStyle.italic,
          fontSize: 40,
          color: Colors.blue[900]
          ),
         
        ),
      ),
    );
  }
}

