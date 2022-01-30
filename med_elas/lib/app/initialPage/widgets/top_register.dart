import 'package:flutter/material.dart';

class TopRegister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Align(
          child: Container(
            width: 180,
            height: 180,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: Theme.of(context).primaryColor),
          ),
          alignment: Alignment.center,
        ),
        Positioned(
          child: Container(
            padding: EdgeInsets.only(bottom: 25, right: 40),
            child: Text(
              "REGI",
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            alignment: Alignment.center,
          ),
        ),
        Positioned(
          child: Align(
            child: Container(
              padding: EdgeInsets.only(top: 40, left: 28),
              width: 140,
              child: Text(
                "STRO",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 38),
              ),
            ),
            alignment: Alignment.center,
          ),
        )
      ],
    );
  }
}
