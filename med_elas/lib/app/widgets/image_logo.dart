import 'package:flutter/material.dart';

class ImageLogo extends StatelessWidget {
  final String file;

  const ImageLogo({Key key, @required this.file}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Image(
        image: AssetImage(file),
      ),
    );
  }
}
