import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class ExitButton extends StatelessWidget {
  const ExitButton() : super();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      label: Text("Sair"),
      backgroundColor: PRIMARY_COLLOR,
      onPressed: () => print("sjkjsk"),
    );
  }
}
