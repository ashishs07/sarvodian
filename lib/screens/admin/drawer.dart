import 'package:flutter/material.dart';

import '../select_login.dart';
import './home_screen.dart';

class AdminDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('ADMIN'),
          ),
          _buildAnswerListTile(context),
          _buildLogoutListTile(context),
        ],
      ),
    );
  }

  Widget _buildAnswerListTile(BuildContext context) {
    return ListTile(
      title: Text('Answer Questions'),
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => AdminHomeScreen()));
      },
    );
  }

  Widget _buildLogoutListTile(BuildContext context) {
    return ListTile(
      title: Text('Logout'),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(SelectLoginScreen.routeName);
      },
    );
  }
}
