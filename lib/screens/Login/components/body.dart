import 'package:flutter/material.dart';
import 'package:hello_world/components/form_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      color: Color.fromARGB(1, 255, 255, 255),
      child: Stack(
        children: <Widget>[
          Container(
            height: size.height * 0.6,
            width: size.width,
            child: Image.asset(
              "assets/images/vaqra_login.png",
              fit: BoxFit.cover,
              height: size.height * 1,
            ),
          ),
          Container(
            alignment: Alignment(0, -0.5),
            child: Image.asset(
              "assets/images/Logo.png",
              height: 60,
              width: 90,
            ),
          ),
          Container(
            width: size.width * 0.9,
            alignment: Alignment(0.4, -0.3),
            child: Text(
              "YOUR DREAM IN YOUR HAND",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 250),
              height: size.height * 0.55,
              width: size.width * 0.9,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.white),
                  color: Colors.white),
              child: LoginForm(),
            ),
          ),
        ],
      ),
    );
  }
}
