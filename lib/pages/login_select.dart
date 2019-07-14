import 'package:flutter/material.dart';

import 'package:sarvodian/pages/auth_student.dart';
import 'package:sarvodian/widgets/admin_controls/admin_login.dart';
import 'package:sarvodian/widgets/UI elements/10pxsizedbox.dart';

class LoginSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text('Student Login'),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AuthPage()));
              },
            ),
            SizedBox10px(),
            RaisedButton(
              child: Text('Admin Login'),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => AdminLogin()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
