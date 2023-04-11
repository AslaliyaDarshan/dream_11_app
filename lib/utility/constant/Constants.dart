// ignore_for_file: file_names

import 'package:flutter/material.dart';

Color backgroundGreenClr = const Color(0xFF368236);
Color backgroundWhiteClr = const Color(0xFFFFFFFF);
Color textGreyClr = const Color(0xFF757575);
String rupee = "\u{20B9}";

Widget height(double height) {
  return SizedBox(
    height: height,
  );
}

Widget width(double width) {
  return SizedBox(
    width: width,
  );
}

text(String pStrText, double pDblSize, Color pClrText,
    {FontWeight? pFontWeight}) {
  return Text(
    pStrText,
    style: TextStyle(
      fontFamily: "Imprima",
      fontSize: pDblSize,
      fontWeight: pFontWeight ?? FontWeight.w600,
      color: pClrText,
    ),
  );
}
