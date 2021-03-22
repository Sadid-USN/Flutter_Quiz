import 'package:flutter/material.dart';

// Надо изменить виджет StatelessWidget на StatefulWidget
// что бы виджет мог изменять  состояние приложения
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Вопросник"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: Text('Добро пожаловать'),
        ),
      ),
    );
  }
}
