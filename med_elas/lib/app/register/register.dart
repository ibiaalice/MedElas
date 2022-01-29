import 'package:flutter/material.dart';
import 'package:med_elas/app/home/widgets/button.dart';
import 'package:med_elas/app/home/widgets/text_button.dart';

import '../home/home_page.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _cpfController = TextEditingController();
  final _susController = TextEditingController();
  final _localController = TextEditingController();
  final _dateController = TextEditingController();
  final _diseaseController = TextEditingController();
  final _medicinesController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registro"),
      ),
      body: Form(
          key: _formKey,
          child: ListView(padding: EdgeInsets.all(16.0), children: <Widget>[
            TextFormButton(
              controller: _nameController,
              hintText: "Nome",
              error: "Nome inválido!",
            ),
            TextFormButton(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              hintText: "E-mail",
              error: "Email inválido!",
            ),
            TextFormButton(
              controller: _cpfController,
              keyboardType: TextInputType.number,
              hintText: "CPF",
              error: "CPF inválido!",
            ),
            TextFormButton(
              controller: _susController,
              keyboardType: TextInputType.number,
              hintText: "Cartão do SUS",
              error: "Cartão do SUS inválido!",
            ),
            TextFormButton(
              controller: _dateController,
              keyboardType: TextInputType.number,
              hintText: "Data de Nascimento",
              error: "Data de Nascimento inválido!",
            ),
            TextFormButton(
              controller: _localController,
              hintText: "Endereço",
              error: "Endereço inválido!",
            ),
            TextFormButton(
              controller: _diseaseController,
              hintText: "Doenças",
              error: "Doenças inválido!",
            ),
            TextFormButton(
              controller: _medicinesController,
              hintText: "Medicamentos",
              error: "Medicamentos inválido!",
            ),
            TextFormButton(
              obscureText: true,
              controller: _passwordController,
              hintText: "Senha",
              error: "Senha inválido!",
            ),
            ButtonClick(
              title: "Criar Conta",
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  Navigator.pop(context);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => MyHomePage(
                                title: "HOME",
                              )));
                }
              },
              colorButton: Theme.of(context).primaryColor,
            )
          ])),
    );
  }
}
