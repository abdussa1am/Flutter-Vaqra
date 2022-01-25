import 'package:flutter/material.dart';
import 'package:hello_world/screens/Login/components/body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          reverse: true,
          child: Body(),
        ));
  }
}
