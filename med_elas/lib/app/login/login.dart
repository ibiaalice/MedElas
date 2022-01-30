import 'package:flutter/material.dart';
import 'package:med_elas/app/home/home_page.dart';
import 'package:med_elas/app/widgets/button.dart';
import 'package:med_elas/app/widgets/custom_text_field.dart';

class Login extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: ListView(padding: EdgeInsets.all(16.0), children: <Widget>[
          CustomTextField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            hintText: "E-mail",
            error: "Email inválido!",
          ),
          CustomTextField(
            obscureText: true,
            controller: _passwordController,
            hintText: "Senha",
            error: "Senha inválido!",
          ),
          ButtonClick(
            title: "Logar",
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
        ]));
  }
}
