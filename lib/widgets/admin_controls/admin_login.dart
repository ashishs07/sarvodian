import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AdminLoginState();
  }
}

class _AdminLoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ADMIN Login'),
      ),
      body: Center(
        child: Text('Constructing'),
      ),
    );
  }
}
