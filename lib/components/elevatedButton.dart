import 'package:flutter/material.dart';

class elevatedButton extends StatelessWidget {
  final String? text;
  final VoidCallback? press;
  final Color? color, textColor;
  final int? widthset;
  const elevatedButton({
    Key? key,
    this.text,
    this.press,
    this.color,
    this.textColor,
    this.widthset = 40,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: size.width * 0.5,
      height: 50,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text!,
        style: TextStyle(color: textColor),
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
          primary: Colors.lightGreen[800],
          shadowColor: Colors.lightGreen[800],
          // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          textStyle: TextStyle(
              color: textColor, fontSize: 14, fontWeight: FontWeight.w500)),
    );
  }
}
