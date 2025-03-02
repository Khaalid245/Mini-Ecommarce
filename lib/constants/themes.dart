import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const KPrimaryColor = Color(0xff843667);
const KSecondaryColor = Color(0xff022238);
const KThirdColor = Color(0xFFFFDCBC);
const KLightColor = Color(0xFFE8F6FB);
const KWhiteColor = Colors.white;
const KBlackColor = Colors.black;

class AppTheme {
  static const KBigTitle = TextStyle(
    color: KWhiteColor,
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  // ignore: constant_identifier_names
  static const KHeadingOne = TextStyle(
   fontSize: 20,
   fontWeight: FontWeight.bold,
  );

  // ignore: non_constant_identifier_names
  static final KBodyText = TextStyle(color: Colors.grey.shade400, fontSize: 12);
}
