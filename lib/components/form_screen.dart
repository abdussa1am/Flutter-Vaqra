import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  String? _name;
  String? _password;
  bool _isObscure = true;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildname() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'User Name',
        prefixIcon: Icon(Icons.person),
      ),
      maxLength: 10,
      validator: (String? value) {
        if (value == null) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (String? value) {
        _name = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      obscureText: _isObscure,
      decoration: InputDecoration(
          labelText: 'Password',
          prefixIcon: Icon(Icons.lock),
          suffixIcon: IconButton(
            icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(() {
                _isObscure = !_isObscure;
              });
            },
          )),
      keyboardType: TextInputType.visiblePassword,
      validator: (String? value) {
        if (value == null) {
          return 'Password is Required';
        }

        return null;
      },
      onSaved: (String? value) {
        _password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            _buildname(),
            _buildPassword(),
            SizedBox(height: 100),
            ElevatedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
