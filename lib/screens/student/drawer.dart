import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';

import '../select_login.dart';
import './home_screen.dart';
import './event_screen.dart';
import './batch-timings_screen.dart';
import './sarvoteam_screen.dart';
import './merit_screen.dart';
import './contact_screen.dart';
import './settings_screen.dart';

class StudentDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          _buildUserAccountHeader(context),
          _buildBrowseListTile(context),
          _buildEventsListTile(context),
          _buildBatchListTile(context),
          _buildTeamListTile(context),
          _buildMeritListTile(context),
          _buildContactListTile(context),
          _buildSettingsListTile(context),
          _buildLogoutListTile(context)
        ],
      ),
    );
  }

  Widget _buildUserAccountHeader(BuildContext context) {
    final userData = Provider.of<UserProvider>(context, listen: false).user;
    return UserAccountsDrawerHeader(
      accountName: Text(
        'Student',
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
      accountEmail: Text(
        userData['email'],
        style: TextStyle(fontSize: 17),
      ),
      currentAccountPicture: CircleAvatar(
        child: FlutterLogo(size: 42.0),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _buildBrowseListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.view_list),
      title: Text('Browse Questions'),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(StudentHomeScreen.routeName);
      },
    );
  }

  Widget _buildEventsListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.event_note),
      title: Text('Events'),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => StudentEventScreen()));
      },
    );
  }

  Widget _buildBatchListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.access_time),
      title: Text('Batch Timings'),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => StudentBTimingScreen()));
      },
    );
  }

  Widget _buildTeamListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.people),
      title: Text('Sarvodaya Team'),
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(builder: (ctx) => StudentSarvoTeamScreen()));
      },
    );
  }

  Widget _buildMeritListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text('Meritorious Students'),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => StudentMeritScreen()));
      },
    );
  }

  Widget _buildContactListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.call),
      title: Text('Contact Us'),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => StudentContactScreen()));
      },
    );
  }

  Widget _buildSettingsListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.settings),
      title: Text('Settings'),
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (ctx) => StudentSettingsScreen()));
      },
    );
  }

  Widget _buildLogoutListTile(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.exit_to_app),
      title: Text('Logout'),
      onTap: () {
        Navigator.of(context).pushReplacementNamed(SelectLoginScreen.routeName);
      },
    );
  }
}
