import 'package:flutter/material.dart';

class FormLogin extends StatelessWidget {
  final String hintText;

  FormLogin({@required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        child: TextField(
          style: TextStyle(
            color: Colors.black,
          ),
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black, width: 2.0),
            ),
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
