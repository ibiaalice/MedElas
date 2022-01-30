import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/image_logo.dart';
import 'package:med_elas/app/widgets/constants.dart';

class Top extends StatelessWidget {
  final String label;

  const Top({Key key, @required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 230,
        child: Column(
          children: <Widget>[
            Align(
              child: Container(
                width: 180,
                height: 180,
                child: ImageLogo(
                  file: "asserts/symbol.png",
                ),
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  label,
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: PRIMARY_COLLOR,
                  ),
                ),
                alignment: Alignment.center,
              ),
            )
          ],
        ));
  }
}
