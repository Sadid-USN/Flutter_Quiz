import 'package:flutter/material.dart';

//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;
// MyApp содержит в себе много других виджетв и что бы он смог отображаться
// необходимо, что бы он унаследовался одним из двух виджетов
// StatelessWidget и StatefulWidget
// основной виджет, который строит наш UI это MaterialApp
main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(primarySwatch: Colors.amber),
      home: PersonWidget(),
    );
  }
}

class FavoritGamer extends StatefulWidget {
  @override
  _FavoritGamerState createState() => _FavoritGamerState();
}

class _FavoritGamerState extends State<FavoritGamer> {
  bool _isfavorite = false;
  int _favoritcount = 2999;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          child: IconButton(
            icon: (_isfavorite
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border)),
            onPressed: _clickfavorite,
            color: Colors.red[900],
          ),
        ),
        SizedBox(
          width: 35,
          child: Container(
            child: Text('$_favoritcount'),
          ),
        ),
      ],
    );
  }

  void _clickfavorite() {
    setState(() {
      if (_isfavorite) {
        _isfavorite = false;
        _favoritcount -= 1;
      } else {
        _isfavorite = true;
        _favoritcount += 1;
      }
    });
  }
}

class PersonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Оценить игрока NBA',
        ),
      ),
      body: Container(
        child: _buildMainColumn(),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buildTopImage(),
          Center(
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.all(5),
                    child: _buildRaiting(),
                  ),
                  Card(
                    elevation: 5,
                    margin: const EdgeInsets.all(5),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: _infobunner(),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    child: Container(
                      padding: const EdgeInsets.all(5),
                      child: _buildDesc(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      );

  Widget _buildTopImage() => Container(
        child: Card(
          margin: const EdgeInsets.only(
            left: 25,
            right: 25,
            top: 20,
          ),
          elevation: 5,
          child: Image.asset(
            'assets/images/jackson2.jpg',
            fit: BoxFit.cover,
          ),
        ),
      );

  Widget _buildRaiting() => ListTile(
        title: Text(
          'Stephen Jesse Jackson',
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text("Выступает за команду «Killer 3s»"),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            FavoritGamer(),
          ],
        ),
      );

  Widget _infobunner() => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buldButton('Форавард', Icons.star, Colors.teal),
          _buldButton('Рост 200.3', Icons.height, Colors.teal),
          _buldButton('Возраст 42', Icons.cached, Colors.teal),
        ],
      );

  Widget _buldButton(String lable, IconData icon, Color color) => Column(
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
          ),
          Container(
            child: Text(
              lable,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );

  Widget _buildDesc() => Text(
        'Стивен Джесси Джексон (англ. Stephen Jesse Jackson; род. 5 апреля'
        '1978 года в Порт-Артуре, штат Техас, США) — американский профессиональный'
        'баскетболист, выступавший в Национальной баскетбольной ассоциации за'
        'восемь различных команд. В 2003 году стал чемпионом НБА в составе'
        '«Сан-Антонио Спёрс».',
        softWrap: true,
        style: TextStyle(
          fontSize: 16.0,
        ),
      );
}

// import 'package:flutter/material.dart';

// void main() => runApp(MyApp());

//// This is the main application widget.
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutters button',
//       theme: ThemeData(
//       primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(title: 'Flutter Demo'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePage({Key key, this.title}) : super(key: key);
//   final String title;

//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'Количество нажатий на кнопку:',
//             ),
//             Text(
//               "$_counter",
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add_circle_outline),
//       ),
//     );
//   }
// }
