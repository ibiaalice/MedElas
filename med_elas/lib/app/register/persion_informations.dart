import 'package:flutter/material.dart';
import 'package:med_elas/app/register/register_information.dart';
import 'package:med_elas/app/widgets/button.dart';
import 'package:med_elas/app/widgets/custom_text_field.dart';

class PersionInformations extends StatefulWidget {
  @override
  _PersionInformationsState createState() => _PersionInformationsState();
}

class _PersionInformationsState extends State<PersionInformations> {
  final _nameController = TextEditingController();

  final _cpfController = TextEditingController();

  final _susController = TextEditingController();

  final _localController = TextEditingController();

  final _dateController = TextEditingController();

  final _diseaseController = TextEditingController();

  final _medicinesController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool nextButtonPressioned = false;

  @override
  Widget build(BuildContext context) {
    if (nextButtonPressioned) {
      return Register();
    } else {
      return formPersionInformation();
    }
  }

  Widget formPersionInformation() {
    return Form(
      key: _formKey,
      child: ListView(padding: EdgeInsets.all(16.0), children: <Widget>[
        CustomTextField(
          controller: _nameController,
          hintText: "Nome",
          error: "Nome inválido!",
        ),
        CustomTextField(
          controller: _cpfController,
          keyboardType: TextInputType.number,
          hintText: "CPF",
          error: "CPF inválido!",
        ),
        CustomTextField(
          controller: _susController,
          keyboardType: TextInputType.number,
          hintText: "Cartão do SUS",
          error: "Cartão do SUS inválido!",
        ),
        CustomTextField(
          controller: _dateController,
          keyboardType: TextInputType.number,
          hintText: "Data de Nascimento",
          error: "Data de Nascimento inválido!",
        ),
        CustomTextField(
          controller: _localController,
          hintText: "Endereço",
          error: "Endereço inválido!",
        ),
        CustomTextField(
          controller: _diseaseController,
          hintText: "Doenças",
          error: "Doenças inválido!",
        ),
        CustomTextField(
          controller: _medicinesController,
          hintText: "Medicamentos",
          error: "Medicamentos inválido!",
        ),
        ButtonClick(
          title: "AVANÇAR",
          onPressed: () {
            if (_formKey.currentState.validate()) {
              setState(() {
                nextButtonPressioned = true;
              });
            }
          },
          colorButton: Theme.of(context).primaryColor,
        )
      ]),
    );
  }
}
