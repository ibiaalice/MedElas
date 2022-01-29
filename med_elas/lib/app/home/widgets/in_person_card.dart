import 'package:flutter/material.dart';

class InPersonCard extends StatelessWidget {
  const InPersonCard() : super();

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            "Atendimento Presencial",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          
        ],
      ),
    ));
  }
}
