import 'package:flutter/material.dart';

import './pages/homepage.dart';
//import './pages/flashpage.dart';
//import './pages/questionpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> _questions = [];

  void _addQuestion(String question) {
    setState(() {
      _questions.add(question);
    });
  }

  /* void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sarvodian',
      theme: ThemeData(
          primarySwatch: Colors.teal,
          primaryColor: Colors.teal,
          accentColor: Colors.white,
          fontFamily: 'Karla',
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.teal,
            textTheme: ButtonTextTheme.accent,
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            foregroundColor: Colors.teal,
            backgroundColor: Colors.white,
          ),
          iconTheme: IconThemeData(color: Colors.white)),
      routes: {
        '/': (BuildContext context) => MyHomePage(_questions, _addQuestion),
      },
    );
  }
}
