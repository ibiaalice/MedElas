import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class AddScheduleButton extends StatelessWidget {
  const AddScheduleButton() : super();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: SECOND_COLLOR,
      onPressed: () => print("Tap it"),
      icon: Icon(Icons.date_range),
      label: Text(
        "Adicionar marcação",
      ),
    );
  }
}
