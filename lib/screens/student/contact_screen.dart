import 'package:flutter/material.dart';

class StudentContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Contact Us'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Mobile No +91 84390 65717',
                  style: TextStyle(fontSize: 22),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Email - thisisjust@demo.email',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        ));
  }
}
