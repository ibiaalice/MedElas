import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class AddLocalButton extends StatelessWidget {
  const AddLocalButton() : super();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: SECOND_COLLOR,
      icon: Icon(Icons.add_location_rounded),
      onPressed: () => print("TAP IT"),
      label: Text("Adicionar rota"),
    );
  }
}
