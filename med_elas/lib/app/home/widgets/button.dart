import 'package:flutter/material.dart';

class ButtonClick extends StatelessWidget {
  final String title;
  final Function() onPressed;
  final Color colorText;
  final Color colorButton;

  const ButtonClick(
      {Key key,
      this.title,
      this.onPressed,
      this.colorText = Colors.white,
      this.colorButton = Colors.purple})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 44.0,
        child: RaisedButton(
            child: Text(
              title,
              style: TextStyle(fontSize: 18.0),
            ),
            textColor: Colors.white,
            color: Theme.of(context).primaryColor,
            onPressed: onPressed));
  }
}
