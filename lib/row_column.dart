import 'package:flutter/material.dart';

class MyRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Вёрстка"),
      ),
      body: Container(
        color: Colors.brown[200],
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            ColorBox(),
            ColorBox(),
            ColorBox(),
            ColorBox(),
            
            // BigColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      width: 82,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(),
          image: DecorationImage(
            image: Image.network(
                    'https://image.freepik.com/free-vector/question-mark-symbol-with-blue-lights-background_1017-25229.jpg'
                    ).image,
            fit: BoxFit.cover,
          ),
          ),
    );
  }
}

class BigColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.red[800],
        border: Border.all(),
      ),
    );
  }
}
