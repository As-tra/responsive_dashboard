import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/constants.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class Styles {
  static TextStyle styleRegular16(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 16),
      color: ksecondaryColor,
    );
  }

  static TextStyle styleMeduim16(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 16),
      fontWeight: FontWeight.w500,
      color: ksecondaryColor,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 16),
      fontWeight: FontWeight.w600,
      color: ksecondaryColor,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 16),
      fontWeight: FontWeight.bold,
      color: kprimaryColor,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 20),
      fontWeight: FontWeight.w600,
      color: ksecondaryColor,
    );
  }

  static TextStyle styleMeduim20(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xFFFFFFFF),
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 12),
      color: kgrey,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 24),
      fontWeight: FontWeight.w600,
      color: kprimaryColor,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 14),
      color: kgrey,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontFamily: kFontFamily,
      fontSize: getResonsiveFontSize(context: context, baseFontSize: 18),
      fontWeight: FontWeight.w600,
      color: kprimaryColor,
    );
  }
}

double getResonsiveFontSize({
  required double baseFontSize,
  required BuildContext context,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * .8;
  double upperLimit = baseFontSize * 1.2;
  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);
  log('$baseFontSize => $responsiveFontSize');
  return responsiveFontSize;
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var pixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tablet) {
    return width / 600;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1850;
  }
}
