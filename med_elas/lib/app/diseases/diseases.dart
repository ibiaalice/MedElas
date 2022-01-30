import 'package:flutter/material.dart';
import 'package:med_elas/app/diseases/widgets/diseases_card.dart';
import 'package:med_elas/app/widgets/constants.dart';

class Diseases extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista de Doenças"),
          backgroundColor: PRIMARY_COLLOR,
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Text(
                    "Selecione uma especialidade, para ver as opções de atendimento!",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: PRIMARY_COLLOR,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  alignment: Alignment.center,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) {
                        String title = MOCK_SPECIALITIES[index];
                        return DiseasesCard(title: title);
                      },
                      separatorBuilder: (context, index) {
                        return Divider();
                      },
                      itemCount: MOCK_SPECIALITIES.length))
            ],
          ),
        ));
  }
}
