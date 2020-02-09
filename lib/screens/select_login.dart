import 'package:flutter/material.dart';

import './admin/auth_screen.dart';
import './student/auth_screen.dart';
import './guest/auth_screen.dart';

class SelectLoginScreen extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              borderOnForeground: true,
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  children: <Widget>[
                    _buildStudentButton(context),
                    SizedBox(height: 10),
                    _buildAdminButton(context),
                    SizedBox(height: 10),
                    _buildGuestButton(context),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildStudentButton(BuildContext context) {
    return RaisedButton(
      child: Text('Student Login'),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(StudentAuthScreen.routeName);
      },
    );
  }

  Widget _buildAdminButton(BuildContext context) {
    return RaisedButton(
      child: Text('Admin Login'),
      onPressed: () {
        Navigator.of(context).pushReplacementNamed(AdminAuthScreen.routeName);
      },
    );
  }

  Widget _buildGuestButton(BuildContext context) {
    return RaisedButton(
      child: Text('Guest Login'),
      onPressed: () {
        Navigator.of(context).pushNamed(GuestAuthScreen.routeName);
      },
    );
  }
}
