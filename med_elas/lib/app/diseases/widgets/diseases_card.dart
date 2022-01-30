import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:med_elas/app/hospital/hospital.dart';
import 'package:med_elas/app/widgets/constants.dart';

class DiseasesCard extends StatelessWidget {
  final String title;

  const DiseasesCard({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: GestureDetector(
            child: Container(
              color: FOUR_COLLOR[100],
              height: 80,
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: FOUR_COLLOR,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => Hospital()),
                )));
  }
}
