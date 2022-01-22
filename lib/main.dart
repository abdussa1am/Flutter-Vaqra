import 'package:flutter/material.dart';
import 'package:hello_world/screens/Login/loginscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vaqra Login',
      theme: ThemeData(primaryColor: Colors.white),
      home: LoginScreen(),
    );
  }
}
