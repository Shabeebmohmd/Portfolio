import 'package:flutter/rendering.dart';

class ColorModel {
  String svgPath;
  Gradient gradient;
  Color color;
  ColorModel({
    required this.color,
    required this.gradient,
    required this.svgPath,
  });
}
