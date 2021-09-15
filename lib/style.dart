import 'package:flutter/material.dart';

final Color sBluegay = Colors.blueGrey[800];

final TextStyle labelText = TextStyle(fontSize: 20, color: sBluegay);
final TextStyle hintStyle = TextStyle(
  fontSize: 13,
  color: Colors.blueGrey[400],
);
final OutlineInputBorder border = OutlineInputBorder(
  borderRadius: BorderRadius.circular(50),
  borderSide: BorderSide(
    color: sBluegay,
    width: 1,
  ),
);
