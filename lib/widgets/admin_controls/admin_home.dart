import 'package:flutter/material.dart';

class AdminHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Controls'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[ListTile()],
        ),
      ),
    );
  }
}
