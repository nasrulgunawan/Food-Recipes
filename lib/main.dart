import 'package:flutter/material.dart';
import 'package:food_recipes/detail_screen.dart';
import 'package:food_recipes/breakfast.dart';
import 'package:food_recipes/desert.dart';
import 'package:food_recipes/about.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Recipes',
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(title: 'Food Recipes'),
        DetailScreen.routeName: (context) => DetailScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _currentIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List _content = [
    new Breakfast(),
    new Desert(),
    new About()
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title, style: TextStyle(fontFamily: 'ProductSans')),
      ),
      body: _content[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.fastfood),
            title: new Text('Breakfast'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.cake),
            title: new Text('Dessert'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('About'))
        ],
      ),
    );
  }
}

