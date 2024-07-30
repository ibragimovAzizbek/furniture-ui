import 'package:flutter/material.dart';

class ColorManager {
  // Black

  static Color bgBlack = HexColor.fromHex("#060501");
  static Color textBlack = HexColor.fromHex("#1B262E");
  static Color black60 = HexColor.fromHex("#606D76");
  static Color black100 = HexColor.fromHex("#1B262E");
  static Color c222222 = HexColor.fromHex("#222222");
  static Color c39352F = HexColor.fromHex("#39352F");

  // White
  static Color bgWhite = HexColor.fromHex("#FFFFFF");

  static Color dotActiveColor = HexColor.fromHex("#898D79");
  static Color dotColor = HexColor.fromHex("#C4C4C4");
  static Color c1AD8B = HexColor.fromHex("#C1AD8B");

  // Oranage
  static Color orange = HexColor.fromHex("#FF871C");

  static Color c999C92 = HexColor.fromHex("#999C92");

  static Color b68A41 = HexColor.fromHex("#B68A41");

  static Color b4D5E0 = HexColor.fromHex("#B4D5E0");

  static Color b4B6B5 = HexColor.fromHex("#B4B6B5");

  static Color c897E73 = HexColor.fromHex("#897E73");

  static Color f2E8DE = HexColor.fromHex("#F2E8DE");

  static Color fF912F = HexColor.fromHex("#FF912F");

  // Red
  static Color eA592A = HexColor.fromHex("#EA592A");

  static Color eECE91 = HexColor.fromHex("#EECE91");
  static Color aBCF9F = HexColor.fromHex("#ABCF9F");

  static Color eEF3E9 = HexColor.fromHex("#EEF3E9");

  static Color d4D5DA = HexColor.fromHex("#D4D5DA");

  static Color f5EFE5 = HexColor.fromHex("#F5EFE5");

  static Color c9C907C = HexColor.fromHex("#9C907C");
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
