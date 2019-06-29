import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import './scoped-models/main_smodel.dart';

import './pages/homepage.dart';
import './pages/auth.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final MainModel model = MainModel();
    return ScopedModel<MainModel>(
      model: model,
      child: MaterialApp(
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
          '/': (BuildContext context) => AuthPage(),
          '/home': (BuildContext context) => MyHomePage(),
        },
      ),
    );
  }
}
