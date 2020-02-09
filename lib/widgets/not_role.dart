import 'package:flutter/material.dart';
import '../screens/select_login.dart';

class NotRole extends StatelessWidget {
  final String role;

  NotRole(this.role);
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      child: Text(
        role,
        style: TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(SelectLoginScreen.routeName);
      },
    );
  }
}
