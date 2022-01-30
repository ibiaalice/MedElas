import 'package:flutter/material.dart';
import 'package:med_elas/app/avaliable_time/widgets/avaliable_time_grid_tile.dart';
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
      /*floatingActionButton: FloatingActionButton.extended(
          backgroundColor: SECOND_COLLOR,
          onPressed: () => print("tap it"),
          label: Text("Requisitar horário")),*/
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "Lista de Horários e Especialidades",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: PRIMARY_COLLOR,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  ...List.generate(20, (index) => AvaliableTimeGridTile()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
