import 'package:flutter/material.dart';
import 'package:jo_ken_pokemon/app/core/ui/styles/colors_app.dart';

class TextStyles {
  static TextStyles? _instance;
  // Avoid self isntance
  TextStyles._();
  static TextStyles get instance {
    _instance ??= TextStyles._();
    return _instance!;
  }

  String get fontHollow => 'Pokemon';
  String get fontSolid => 'Pokemon-Solid';

  TextStyle get textHollow => TextStyle(
        fontFamily: fontHollow,
        fontSize: 23,
        color: ColorsApp.instance.lightYellow,
        letterSpacing: 3,
      );
  TextStyle get textSolid => TextStyle(
        fontFamily: fontSolid,
        fontSize: 23,
        color: ColorsApp.instance.lightYellow,
        letterSpacing: 3,
      );
  TextStyle get textSolidBlue => TextStyle(
        fontFamily: fontSolid,
        fontSize: 23,
        color: ColorsApp.instance.lightBlue,
        letterSpacing: 3,
      );
  TextStyle get textSolidBlueData => TextStyle(
        fontFamily: fontSolid,
        fontSize: 14,
        color: Colors.white,
        letterSpacing: 3,
      );
}

extension TextStylesExtension on BuildContext {
  TextStyles get textStyles => TextStyles.instance;
}
