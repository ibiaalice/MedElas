import 'package:flutter/material.dart';

class TextFormButton extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String error;
  final bool obscureText;
  final TextInputType keyboardType;

  const TextFormButton({
    Key key,
    this.controller,
    this.hintText,
    this.error,
    this.obscureText = false,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        TextFormField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
          ),
          keyboardType: keyboardType,
          validator: (text) {
            if (text.isEmpty) return error;
            return null;
          },
        ),
        SizedBox(height: 16.0),
      ],
    ));
  }
}
