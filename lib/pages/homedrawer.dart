import 'package:flutter/material.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            automaticallyImplyLeading: false,
            title: Text('Choose'),
          ),
          ListTile(
            title: Text('Browse Questions'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Events'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Batch Timings'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Sarvodaya Team'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Meritorious Students'),
            onTap: () {},
          ),
          ListTile(
            title: Text('Contact Us'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
