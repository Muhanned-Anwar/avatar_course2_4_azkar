import 'package:flutter/material.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_font_weight.dart';
import '../resources/manager_fonts.dart';
import '../resources/manager_strings.dart';

Text baseText({
  String? text,
  double? fontSize,
  FontWeight? fontWeight,
  Color? color,
}) {
  return Text(
    text ?? ManagerStrings.appName,
    style: TextStyle(
      fontSize: fontSize ?? ManagerFontSizes.s26,
      fontWeight: fontWeight ?? ManagerFontWeight.w600,
      fontFamily: ManagerFontFamily.appFont,
      color: color ?? ManagerColors.white,
    ),
  );
}
