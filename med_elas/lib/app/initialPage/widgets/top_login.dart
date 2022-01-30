import 'package:flutter/material.dart';

class TopLogin extends StatelessWidget {
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
        Align(
          alignment: Alignment.center,
          child: Container(
            child: Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            alignment: Alignment.center,
          ),
        )
      ],
    );
  }
}
