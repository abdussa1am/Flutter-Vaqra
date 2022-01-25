import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hello_world/components/elevatedButton.dart';

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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter name';
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
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter Password';
        }
        if (value.length < 4) {
          return 'Length must be greater then 4';
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
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            _buildname(),
            _buildPassword(),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  child: Text("Recover Password",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.blue,
                      )),
                  onTap: () {
                    // do what you need to do when "Click here" gets clicked
                  }),
            ),
            SizedBox(height: 2),
            elevatedButton(
              text: "Sign in",
              press: () {
                if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                  );
                }
              },
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Expanded(
                  child: Divider(
                    thickness: 1.0,
                    color: Colors.black38,
                  ),
                ),
                Text("  or  "),
                Expanded(
                  child: Divider(
                    thickness: 1.0,
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: size.width * 0.6,
              alignment: Alignment.center,
              child: Text(
                "Log in With",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Colors.lightBlue[900],
                    // color: Colors.lightBlue[900]
                  ),
                  //using font awesome icon in action list of appbar
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.instagram,
                    color: Colors.amber[700],
                  ),
                  //using font awesome icon in action list of appbar
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.twitter,
                    color: Colors.lightBlue[700],
                  ),
                  //using font awesome icon in action list of appbar
                ),
              ],
            ),

            // account redirect
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: GestureDetector(
                  child: Text("Don't have an account yet? Sign up",
                      style: TextStyle(
                        color: Colors.black87,
                      )),
                  onTap: () {
                    // do what you need to do when "Click here" gets clicked
                  }),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: GestureDetector(
                  child: Text("Don't have an stylish account yet? Sign in",
                      style: TextStyle(
                        color: Colors.black87,
                      )),
                  onTap: () {
                    // do what you need to do when "Click here" gets clicked
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
