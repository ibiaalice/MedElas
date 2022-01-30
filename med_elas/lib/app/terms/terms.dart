import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class Terms extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Termos de Uso"),
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
                  terms(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                alignment: Alignment.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String terms() {
    return 'Termos e Condições de Uso\n\nSeja bem-vindo ao MedElas!\n\nEstes termos e condições descrevem as regras de uso do aplicativo MedElas.\n\nAo acessar este app, consideramos que você está de acordo com os termos e condições abaixo. Não continue a usar o MedElas caso você discorde dos termos e condições descritos neste contrato.';
  }
}
