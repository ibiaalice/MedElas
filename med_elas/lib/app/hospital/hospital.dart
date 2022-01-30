import 'package:flutter/material.dart';
import 'package:med_elas/app/hospital/widgets/hospital_card.dart';
import 'package:med_elas/app/widgets/constants.dart';

class Hospital extends StatelessWidget {
  final String disease;

  const Hospital({Key key, this.disease}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de hospitais"),
        backgroundColor: PRIMARY_COLLOR,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      String hospital = MOCK_HOSPITAL[index];
                      String local = MOCK_HOSPITAL_LOCAL[index];
                      String tell = MOCK_HOSPITAL_Tell[index];

                      return HospitalCard(
                          hospital: hospital, local: local, tell: tell);
                    },
                    separatorBuilder: (context, index) {
                      return Divider();
                    },
                    itemCount: MOCK_SPECIALITIES.length))
          ],
        ),
      ),
    );
  }
}
