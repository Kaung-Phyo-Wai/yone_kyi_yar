import 'package:flutter/material.dart';

class ButtonForHome extends StatelessWidget {
  

  ButtonForHome({this.onPressed, this.lable, this.fillcolor,this.textColor});

  final Function onPressed;
  final String lable;
  final Color fillcolor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
     splashColor: Colors.transparent,
      enableFeedback: false,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100.0)),
      padding:
          EdgeInsets.fromLTRB(75.0, 10.0, 75.0, 10.0),
      onPressed: onPressed,
      child: Text(
        lable,
        style: TextStyle(
          fontSize:25,
          color: textColor
        ),
      ),
      fillColor: fillcolor,
    );
  }
}

class Textwidget extends StatelessWidget {
  final String text;
  final Function thescreen;
  Textwidget({this.text, this.thescreen});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: RawMaterialButton(
        onPressed: thescreen,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
            child: Text(
              text,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(color: Colors.blue),
        ),
      ),
    );
  }
}