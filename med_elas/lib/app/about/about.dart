import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sobre o MedElas"),
        backgroundColor: PRIMARY_COLLOR,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Este app tem intenção de ajudar mulheres que muitas vezes nao tem tempo de ir a um consultorio medico durante o dia-a-dia, além de ser uma maneira reduzir a quantidade de pessoas em filas de espera de maneira precensial.",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
