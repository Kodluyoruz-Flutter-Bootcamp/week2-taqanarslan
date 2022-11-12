import 'package:flutter/material.dart';

class ColorUtils {
  static Color primary = Color(0xffffffff);
  static Color secondary = Color.fromARGB(255, 89, 95, 168);
  static Color territary = Color.fromARGB(205, 25, 211, 133);
}

class PaddingUtils {
  static double min = 5.0;
  static double small = 10.0;
  static double medium = 15.0;
  static double big = 25.0;
  static double huge = 30.0;
}

class TextStyleUtils {
  static TextStyle primary = TextStyle(color: ColorUtils.territary, fontSize: 20);
}
