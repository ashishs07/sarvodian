import 'package:flutter/material.dart';

import 'package:sarvodian/pages/admin/home_a.dart';

class AdminDrawer extends StatelessWidget {
  Widget _buildAnswerListTile(BuildContext context) {
    return ListTile(
      title: Text('Answer Questions'),
      onTap: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => AdminHomePage()));
      },
    );
  }

  Widget _buildLogoutListTile(BuildContext context) {
    return ListTile(
      title: Text('Logout'),
      onTap: () {
        Navigator.pushReplacementNamed(context, '/');
      },
    );
  }

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
}
