import 'package:flutter/material.dart';

class ButtonIntro extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color backgroundColor;
  final Color textColor;

  ButtonIntro({
    @required this.onTap,
    this.text,
    this.backgroundColor = Colors.white,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 13.0,
          ),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(
              width: 2.0,
              color: Colors.black,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
