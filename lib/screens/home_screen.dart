import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:copyin_app/widgets/button_card.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1.3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/home2.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                CircleAvatar(
                                  backgroundImage: AssetImage(
                                    'assets/images/ava.jpg',
                                  ),
                                  radius: 25.0,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: Icon(
                                    Icons.menu,
                                    color: Colors.black,
                                    size: 30.0,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 12.0,
                            ),
                            Text(
                              'Hello Aditya!',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins-Bold',
                                fontWeight: FontWeight.w500,
                                fontSize: 39,
                              ),
                            ),
                            Text(
                              'Can I help you?',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Poppins-light',
                                fontWeight: FontWeight.w300,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                            ButtonCard(
                              image:
                                  AssetImage("assets/images/card_button.png"),
                              onTap: () {},
                            ),
                            ButtonCard(
                              image:
                                  AssetImage("assets/images/card_button2.png"),
                              onTap: () {},
                            ),
                            ButtonCard(
                              image:
                                  AssetImage("assets/images/card_button3.png"),
                              onTap: () {},
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              child: Container(
                alignment: Alignment.bottomCenter,
                width: MediaQuery.of(context).size.width,
                height: 90.0,
                decoration: BoxDecoration(
                  color: Color(0xFFFFC6F3),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(29.0),
                    topRight: Radius.circular(29.0),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 40.0,
                      right: 40.0,
                      top: 20.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Rp.237.000',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'Poppins-Bold',
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                          ),
                        ),
                        Container(
                          width: 120,
                          height: 37,
                          decoration: BoxDecoration(
                            color: Color(0xFF262425),
                            borderRadius: BorderRadius.all(
                              Radius.circular(12.0),
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'top up saldo',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Poppins-Bold',
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
