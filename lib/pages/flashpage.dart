import 'package:flutter/material.dart';

class FlashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Image.asset('assets/theweeknd.jpg'),
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }
}
