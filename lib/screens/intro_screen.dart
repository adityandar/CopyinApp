import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:copyin_app/widgets/button_intro.dart';
import 'form_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 11,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/intro.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 34.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 23.0, right: 23.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          ButtonIntro(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(
                                    title: "Log In",
                                  ),
                                ),
                              );
                            },
                            text: "LOG IN",
                            backgroundColor: Colors.white,
                            textColor: Colors.black,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          ButtonIntro(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(
                                    title: "Register",
                                  ),
                                ),
                              );
                            },
                            text: "REGISTER",
                            backgroundColor: Colors.black,
                            textColor: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
