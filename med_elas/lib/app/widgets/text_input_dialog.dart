import 'package:flutter/material.dart';

class TextInputDialog extends StatefulWidget {
  final String title;
  final String initialValue;
  final bool isNumericType;
  final int maxLines;
  final void Function(String value) onConfirm;

  const TextInputDialog(
      {Key key,
      @required this.title,
      @required this.onConfirm,
      this.initialValue = "",
      this.isNumericType = false,
      this.maxLines})
      : super(key: key);

  @override
  _TextInputDialogState createState() => _TextInputDialogState();
}

class _TextInputDialogState extends State<TextInputDialog> {
  String updatedValue;

  @override
  void initState() {
    updatedValue = widget.initialValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title.toUpperCase()),
      content: TextFormField(
        maxLines: widget.maxLines,
        keyboardType:
            widget.isNumericType ? TextInputType.number : TextInputType.text,
        initialValue: widget.initialValue,
        onChanged: (value) {
          setState(() {
            updatedValue = value;
          });
        },
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
      actions: [
        FlatButton(
          textColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("CANCELAR"),
        ),
        FlatButton(
          onPressed: () {
            widget.onConfirm(updatedValue);
            Navigator.pop(context);
          },
          child: const Text("CONFIRMAR"),
        ),
      ],
    );
  }
}
