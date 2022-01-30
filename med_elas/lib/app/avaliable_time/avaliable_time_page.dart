import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class AvaliableTimePage extends StatelessWidget {
  const AvaliableTimePage() : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: PRIMARY_COLLOR,
        title: Text("Horários disponíveis"),
      ),
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor: SECOND_COLLOR,
          onPressed: () => print("tap it"),
          label: Text("Requisitar horário")),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Lista de Horários e Especialidades",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
            ),
            Expanded(
                child: GridView.count(
                    crossAxisCount: 4,
                    children:
                        List.generate(20, (index) => AvaliableTimeGridTile())))
          ],
        ),
      ),
    );
  }
}

class AvaliableTimeGridTile extends StatelessWidget {
  const AvaliableTimeGridTile() : super();

  @override
  Widget build(BuildContext context) {
    MOCK_DOCTORS_NAME.shuffle();
    MOCK_SPECIALITIES.shuffle();
    MOCK_SCHREDULES.shuffle();

    final doctorName = MOCK_DOCTORS_NAME[0];
    final specialite = MOCK_SPECIALITIES[0];
    final schredule = MOCK_SCHREDULES[0];

    return Card(
      child: Container(
          color: PRIMARY_COLLOR,
          height: 40,
          width: 40,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                schredule,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              Text(doctorName),
              Text(specialite)
            ],
          )),
    );
  }
}
