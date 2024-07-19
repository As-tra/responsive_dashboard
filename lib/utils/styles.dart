import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constants.dart';

abstract class Styles {
  static const styleRegular16 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 16,
    color: ksecondaryColor,
  );
  static const styleMeduim16 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: ksecondaryColor,
  );
  static const styleSemiBold16 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ksecondaryColor,
  );
  static const styleBold16 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: kprimaryColor,
  );
  static const styleSemiBold20 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    color: ksecondaryColor,
  );
  static const styleMeduim20 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: Color(0xFFFFFFFF),
  );
  static const styleRegular12 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 12,
    color: Color(0xffaaaaaa),
  );
  static const styleSemiBold24 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: kprimaryColor,
  );
  static const styleRegular14 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 14,
    color: Color(0xffaaaaaa),
  );
  static const styleSemiBold18 = TextStyle(
    fontFamily: kFontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: kprimaryColor,
  );
}
