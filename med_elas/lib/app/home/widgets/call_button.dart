import 'package:flutter/material.dart';
import 'package:med_elas/app/suport/suport.dart';
import 'package:med_elas/app/widgets/constants.dart';

class CallButton extends StatelessWidget {
  const CallButton() : super();

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: PRIMARY_COLLOR,
      onPressed: () =>
          Navigator.push(context, MaterialPageRoute(builder: (_) => Suport())),
      icon: Icon(Icons.question_answer),
      label: Text("Fale Conosco!"),
    );
  }
}
