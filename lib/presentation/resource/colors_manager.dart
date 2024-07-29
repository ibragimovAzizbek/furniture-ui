import 'package:flutter/material.dart';

class ColorManager {
  // Black

  static Color bgBlack = HexColor.fromHex("#060501");
  static Color textBlack = HexColor.fromHex("#1B262E");
  static Color black60 = HexColor.fromHex("#606D76");
  static Color black100 = HexColor.fromHex("#1B262E");

  // White
  static Color bgWhite = HexColor.fromHex("#FFFFFF");

  static Color dotActiveColor = HexColor.fromHex("#898D79");
  static Color dotColor = HexColor.fromHex("#C4C4C4");
  static Color c1AD8B = HexColor.fromHex("#C1AD8B");

  // Oranage
  static Color orange = HexColor.fromHex("#FF871C");

  static Color c999C92 = HexColor.fromHex("#999C92");

  static Color b68A41 = HexColor.fromHex("#B68A41");
}

extension HexColor on Color {
  static Color fromHex(String hexColorString) {
    hexColorString = hexColorString.replaceAll('#', '');
    if (hexColorString.length == 6) {
      hexColorString = "FF$hexColorString"; // 8 char with opacity 100%
    }
    return Color(int.parse(hexColorString, radix: 16));
  }
}
