import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/user_provider.dart';
import './home_screen/home_screen.dart';
import '../../widgets/not_role.dart';

class StudentAuthScreen extends StatefulWidget {
  static const routeName = '/studentauth';
  @override
  _StudentAuthScreenState createState() => _StudentAuthScreenState();
}

class _StudentAuthScreenState extends State<StudentAuthScreen> {
  final Map<String, dynamic> _formData = {
    'email': null,
    'password': null,
    'terms': false,
  };

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _submitForm() {
    if (!_formKey.currentState.validate() || !_formData['terms']) {
      return;
    }
    _formKey.currentState.save();
    final userData = Provider.of<UserProvider>(context, listen: false);
    userData.setUser(_formData);
    FocusScope.of(context).unfocus();
    Navigator.of(context).pushReplacementNamed(StudentHomeScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Login Page'),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: _buildBackgroundImage(),
        ),
        padding: EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  _buildEmailTTF(),
                  SizedBox(height: 10),
                  _buildPasswordTTF(),
                  _buildTermsSwitchTile(),
                  _buildSubmitButton(),
                  NotRole('Not Student?'),
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

  Widget _buildEmailTTF() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Icon(Icons.email),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Enter a valid E-mail.';
        }
        return null;
      },
      onSaved: (String value) {
        _formData['email'] = value;
      },
    );
  }

  Widget _buildPasswordTTF() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        filled: true,
        fillColor: Colors.white,
        suffixIcon: Icon(Icons.security),
      ),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Password is required';
        }
        if (value.length < 8) {
          return 'Required 8+ characters';
        }
        return null;
      },
      onSaved: (String value) {
        _formData['password'] = value;
      },
    );
  }

  Widget _buildTermsSwitchTile() {
    return Switch(
      value: _formData['terms'],
      onChanged: (bool value) {
        setState(() {
          _formData['terms'] = !_formData['terms'];
        });
      },
      activeColor: Theme.of(context).primaryColor,
    );
  }

  Widget _buildSubmitButton() {
    return RaisedButton.icon(
      label: Text('Submit'),
      icon: Icon(
        Icons.arrow_forward,
      ),
      onPressed: _submitForm,
    );
  }
}
