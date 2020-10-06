import 'package:flutter/material.dart';

class ButtonCard extends StatelessWidget {
  final AssetImage image;
  final Function onTap;

  ButtonCard({@required this.image, @required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 130,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: image,
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
      ),
    );
  }
}
