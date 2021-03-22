import 'package:flutter/material.dart';

// SizedBox Нужен для помещение пустого пространство между виджетами
class MyFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Child and Children"),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                color: Colors.grey,
                height: 150,
                width: double.infinity, 
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    
                    children:<Widget>[

                          Flexible(
                          child: Container(
                          color: Colors.green,
                          height: double.infinity,
                          width: 80,
                          child: Center(
                            child: Text(
                              'Box 1',
                              style: TextStyle(fontSize: 30.0),
                            ),
                          ),
                        ),
                      ),
                      
                      Container(
                        color: Colors.deepOrange,
                        height: double.infinity,
                        width: 80,
                        child: Center(
                          child: Text(
                            'Box 2',
                            style: TextStyle(fontSize: 30.0),
                          ),
                        ),
                      ),

                     Flexible(child: ColorBox()),

                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}


class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text('Sadid', style: TextStyle(color: Colors.red[50],
       fontSize: 30.0),
      
      ),
      height: double.infinity,
      width: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(),
          image: DecorationImage(
            image: Image.network(
                    'https://image.freepik.com/free-vector/dark-blue-vector-background-with-curved-ribbons_6869-2132.jpg'
                    ).image,
            fit: BoxFit.cover,
          ),
          ),
    );
  }
}

// Container(
//               color: Colors.green[700],
//               width: double.maxFinite,
//               height: 100,
//               child: Text(
//                 "Darul-asar",
//                 style: TextStyle(
//                   fontSize: 40,
//                   color: Colors.amber,
//                 ),
//                 softWrap: true,
//                 overflow: TextOverflow.fade,
//               ),
//             ),
//             Icon(
//               Icons.wysiwyg,
//               size: 40,
//               color: Colors.white,
//             ),

//           Image.network(
//                   "https://cdn.pixabay.com/photo/2014/04/17/23/26/environmental-protection-326923_960_720.jpg"),
