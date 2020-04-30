/*
  Classe fornecida pelo prof. Paulo para utilização de cores hexadecimais.
  Exemplo:
    Color cor1 = HexColor("#b74093");

  ATENÇÃO:
    - Existe um plugin para essa finalidade, porém não funcionou 
      ao executar o app no https://dartpad.dev/
    - Testar em um dispositivo físico.
      https://pub.dev/packages/hexcolor
*/

import 'package:flutter/material.dart';

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}