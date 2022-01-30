import 'package:flutter/material.dart';
import 'package:med_elas/app/login/login.dart';
import 'package:med_elas/app/register/persion_informations.dart';
import 'package:med_elas/app/widgets/button.dart';

class ButtonOpptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: ButtonClick(
            title: "Login",
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Login()));
            },
            colorButton: Theme.of(context).primaryColor,
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
            child: ButtonClick(
          title: "Cadastrar Conta",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => PersionInformations()));
          },
          colorButton: Theme.of(context).primaryColor,
        )),
      ],
    );
  }
}
