import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image(
        image: AssetImage("asserts/logo.png"),
      ),
    );
  }
}
