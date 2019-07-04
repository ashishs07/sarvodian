import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AdminLoginState();
  }
}

class _AdminLoginState extends State<AdminLogin> {
  final GlobalKey<FormState> _adminformkey = GlobalKey();

  Widget _buildAdminUsernameField() {
    return TextFormField(
      validator: (String value) {
        if (value != 'admin') {
          return 'Username Invalid';
        }
      },
    );
  }

  Widget _buildAdminPasswordField() {
    return TextFormField(
      validator: (String value) {
        if (value != 'admin') {
          return 'Password Invalid';
        }
      },
    );
  }

  Widget _buildAdminSubmitButton() {
    return RaisedButton(
      child: Text('Login'),
      onPressed: () {
        if (!_adminformkey.currentState.validate()) {
          return;
        }
        _adminformkey.currentState.save();
        Navigator.pushReplacementNamed(context, '/home');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ADMIN Login'),
      ),
      body: Center(
        child: Container(
          child: SingleChildScrollView(
            child: Form(
              key: _adminformkey,
              child: Column(
                children: <Widget>[
                  _buildAdminUsernameField(),
                  _buildAdminPasswordField(),
                  _buildAdminSubmitButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
