import "package:flutter/material.dart";
import 'style.dart';

class InputField extends StatelessWidget {
  String labeltext, hinttext;
  TextInputType kType;
  IconData pIcon;
  IconButton sIcon;
  bool visability = true;
  Function password;
  InputField({
    @required this.labeltext,
    @required this.hinttext,
    @required this.kType,
    this.pIcon,
    this.sIcon,
    this.visability,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        prefixIcon: Icon(pIcon),
        suffixIcon: sIcon,
        labelText: labeltext,
        hintText: hinttext,
        labelStyle: labelText,
        hintStyle: hintStyle,
        border: border,
      ),
      obscureText: visability,
    );
  }
}
