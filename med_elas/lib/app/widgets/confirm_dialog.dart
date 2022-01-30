import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class ConfirmDialog extends StatelessWidget {
  final String title;
  final String content;
  final Function onTap;
  const ConfirmDialog({Key key, this.title, this.content, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title.toUpperCase()),
      content: Column(mainAxisSize: MainAxisSize.min, children: [
        Align(
          alignment: Alignment.center,
          child: Container(
            child: Text(
              content,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            alignment: Alignment.center,
          ),
        ),
      ]),
      actions: [
        FlatButton(
          textColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("CANCELAR"),
        ),
        FlatButton(
          textColor: SECOND_COLLOR,
          onPressed: () {
            if (onTap != null) onTap();
            Navigator.pop(context);
          },
          child: const Text("CONFIRMAR"),
        ),
      ],
    );
  }
}
