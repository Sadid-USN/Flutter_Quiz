import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Вопросник"),
      ),
      body: Container(
        alignment: Alignment.center,
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: Image.network(
                    'https://image.freepik.com/free-vector/question-mark-neon-sign-vector-elements_36298-747.jpg'
                    ).image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.zero,
        ),
      ),
    );
  }
}




// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     appBar: AppBar(
//       title: Text("Контейнер"),
//     ),
//     body:Center(
//     child: Container(
//      decoration: BoxDecoration(
//     // shape: BoxShape.circle,
//      border: Border.all(),
//     color: Colors.lightGreen,
//     ),
//     alignment: Alignment.center,
//     // height: 100,
//     // width: 100,
//     margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
//     padding: const EdgeInsets.all(0.0),
//     child: Text("Darul-asar"),
//     )

//     ),
