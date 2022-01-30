import 'package:flutter/material.dart';

class Top extends StatelessWidget {
  final Widget top;

  const Top({Key key, this.top}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width, height: 160, child: top);
  }
}
