import 'package:flutter/material.dart';

class AppConstants {
 static Color appBarColor = const Color.fromARGB(218, 169, 13, 91);

  static TextStyle textStyle({double fontSize = 16, Color color = Colors.black,FontWeight fontWeight = FontWeight.w500}) {
    return TextStyle(
      fontSize: fontSize,
      color: color,
      fontWeight: fontWeight,
    );
  }
}
