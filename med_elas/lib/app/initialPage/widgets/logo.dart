import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/image_logo.dart';

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 220,
        child: Stack(
          children: <Widget>[
            Positioned(
                child: Container(
              child: Align(
                child: Container(
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  width: 350,
                  height: 350,
                ),
              ),
              height: 184,
            )),
            Positioned(
              child: Container(height: 184, child: Align(child: ImageLogo())),
            ),
          ],
        ),
      ),
    );
  }
}
