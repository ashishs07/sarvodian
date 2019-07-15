import 'package:flutter/material.dart';

import 'package:sarvodian/pages/student/auth_s.dart';
import 'package:sarvodian/pages/admin/auth_a.dart';
import 'package:sarvodian/widgets/UI elements/10pxsizedbox.dart';

class LoginSelectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          color: Colors.red,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Theme.of(context).primaryColor,
                height: 35,
                width: 125,
                child: FlatButton(
                  child: Text('Student Login'),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AuthPage()));
                  },
                ),
              ),
              SizedBox10px(),
              Container(
                color: Theme.of(context).primaryColor,
                height: 35,
                width: 125,
                child: FlatButton(
                  child: Text('Admin Login'),
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => AdminLogin()));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
