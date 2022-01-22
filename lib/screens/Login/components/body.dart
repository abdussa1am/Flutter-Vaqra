import 'package:flutter/material.dart';
import 'package:hello_world/components/form_screen.dart';

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
            // height: size.height * 0.9,
            width: size.width,
            child: Image.asset(
              "images/vaqra_login.png",
              fit: BoxFit.cover,
              height: size.height * 0.6,
            ),
          ),
          Text(
            "Your Dream In Your hand",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 300),
              height: size.height * 0.5,
              width: size.width * 0.9,
              // color: Colors.white,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1, color: Colors.white),
                  color: Colors.white),
              child: LoginForm(),
            ),
          )
        ],
      ),
    );
  }
}
