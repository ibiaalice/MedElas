import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class HospitalCard extends StatelessWidget {
  final String hospital;
  final String local;
  final String tell;

  const HospitalCard({Key key, this.hospital, this.local, this.tell})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: GestureDetector(
      child: Container(
        color: FOUR_COLLOR[100],
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text(
                  hospital,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: PRIMARY_COLLOR,
                  ),
                  textAlign: TextAlign.center,
                ),
                alignment: Alignment.center,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                    child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      local,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: FOUR_COLLOR,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                )),
                Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      child: Text(
                        tell,
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
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
