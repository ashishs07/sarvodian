import 'package:flutter/material.dart';

import '../../widgets/not_role.dart';
import './home_screen.dart';

class AdminAuthScreen extends StatefulWidget {
  static const routeName = '/admin-auth';
  @override
  _AdminAuthScreenState createState() => _AdminAuthScreenState();
}

class _AdminAuthScreenState extends State<AdminAuthScreen> {
  final _formkey = GlobalKey<FormState>();

  void _submitform() {
    if (!_formkey.currentState.validate()) {
      return;
    }
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (ctx) => AdminHomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ADMIN Login'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                children: <Widget>[
                  _buildUsernameTTF(),
                  SizedBox(height: 10),
                  _buildPasswordTTF(),
                  _buildSubmitButton(),
                  _buildBottomRightContainer(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  DecorationImage _buildBackgroundImage() {
    return DecorationImage(
      image: AssetImage('assets/sarvo.jpg'),
      fit: BoxFit.cover,
      colorFilter:
          ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
    );
  }

  Widget _buildUsernameTTF() {
    return TextFormField(
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: 'Username',
      ),
      keyboardType: TextInputType.text,
      validator: (String value) {
        if (value != 'admin') {
          return 'Username Invalid';
        }
        return null;
      },
      onSaved: (String value) {},
    );
  }

  Widget _buildPasswordTTF() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        labelText: 'Password',
      ),
      validator: (String value) {
        if (value != 'admin') {
          return 'Password Invalid';
        }
        return null;
      },
      onSaved: (String value) {},
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton(
      child: Text('Login'),
      onPressed: _submitform,
    );
  }

  Widget _buildBottomRightContainer() {
    return NotRole('Not Admin?');
  }
}
