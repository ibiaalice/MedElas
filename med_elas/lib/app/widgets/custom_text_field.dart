import 'package:flutter/material.dart';
import 'package:med_elas/app/widgets/constants.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String error;
  final bool obscureText;
  final TextInputType keyboardType;

  const CustomTextField({
    this.controller,
    Key key,
    this.hintText,
    this.error,
    this.obscureText,
    this.keyboardType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      TextFormField(
        controller: controller,
        obscureText: obscureText ?? false,
        style: TextStyle(
          fontSize: 20,
        ),
        keyboardType: keyboardType,
        validator: (text) {
          if (text.isEmpty) return error;
          return null;
        },
        decoration: InputDecoration(
          hintStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          hintText: hintText,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: PRIMARY_COLLOR,
              width: 2,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: PRIMARY_COLLOR,
              width: 3,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 20,
      )
    ]));
  }
}
