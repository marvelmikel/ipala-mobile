import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007e = fromHex('#7e0f0400');

  static Color deepOrange50 = fromHex('#fcede9');

  static Color deepOrangeA100 = fromHex('#ff9f83');

  static Color blueGray10087 = fromHex('#87d4d4d4');

  static Color deepOrange60011 = fromHex('#11f44a15');

  static Color amberA200 = fromHex('#ffe146');

  static Color green600 = fromHex('#31aa44');

  static Color red100 = fromHex('#fbddd4');

  static Color black90087 = fromHex('#870f0400');

  static Color black90001 = fromHex('#000000');

  static Color greenA700 = fromHex('#0fce45');

  static Color red10038 = fromHex('#38fbddd4');

  static Color black90000 = fromHex('#00000000');

  static Color black900 = fromHex('#0e0300');

  static Color deepOrange600 = fromHex('#f44a15');

  static Color yellow900 = fromHex('#fc6f20');

  static Color black901 = fromHex('#000000');

  static Color deepOrange6006c = fromHex('#6cf44a15');

  static Color blueGray900 = fromHex('#373737');

  static Color black90002 = fromHex('#0f0400');

  static Color black900A0 = fromHex('#a00f0400');

  static Color gray700 = fromHex('#585858');

  static Color black900A2 = fromHex('#a20f0400');

  static Color black900E5 = fromHex('#e50f0400');

  static Color orangeA200 = fromHex('#ff9446');

  static Color gray800 = fromHex('#6b3a1f');

  static Color black9006c = fromHex('#6c0f0400');

  static Color gray900 = fromHex('#191919');

  static Color orange700 = fromHex('#ff7a00');

  static Color black900A9 = fromHex('#a90f0400');

  static Color gray200 = fromHex('#e9e9e9');

  static Color black9000c = fromHex('#0c000000');

  static Color gray300 = fromHex('#e7d7d3');

  static Color gray30001 = fromHex('#ecd9d4');

  static Color gray100 = fromHex('#fcf5f3');

  static Color black900Ab = fromHex('#ab000000');

  static Color black90099 = fromHex('#990f0400');

  static Color bluegray400 = fromHex('#888888');

  static Color gray10001 = fromHex('#fbf5f3');

  static Color blue400 = fromHex('#469bff');

  static Color whiteA700 = fromHex('#ffffff');

  static Color black9007e01 = fromHex('#7e000000');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
