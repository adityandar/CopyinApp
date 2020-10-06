import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:copyin_app/widgets/form_login.dart';
import 'package:copyin_app/screens/home_screen.dart';

class LoginScreen extends StatelessWidget {
  final String title;

  LoginScreen({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              color: Colors.white,
              width: double.infinity,
              height: double.infinity,
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/background_login.png',
                scale: 0.87,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 40.0,
                        bottom: 20.0,
                      ),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.grey.shade500,
                        size: 30.0,
                      ),
                    ),
                  ),
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 36.0,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  FormLogin(
                    hintText: "email",
                  ),
                  FormLogin(
                    hintText: "password",
                  ),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
