import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Color primaryColor;
  final Color secondaryColor;

  final String label;
  final Function() onPressed;
  const CustomButton({
    Key key,
    this.primaryColor,
    this.secondaryColor,
    @required this.label,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        highlightElevation: 0.0,
        splashColor: secondaryColor,
        highlightColor: primaryColor,
        elevation: 0.0,
        color: primaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(30.0),
            side: BorderSide(color: Colors.white, width: 3)),
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, color: secondaryColor, fontSize: 20),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
