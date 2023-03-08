import 'package:flutter/material.dart';

class ColorsApp {
  static ColorsApp? _instance;
  // Avoid self isntance
  ColorsApp._();
  static ColorsApp get instance {
    _instance ??= ColorsApp._();
    return _instance!;
  }

  Color get lightYellow => const Color(0XFFffcb05);
  Color get shadowYellow => const Color(0XFFc7a008);
  Color get lightBlue => const Color(0XFF2a75bb);
  Color get shadowBlue => const Color(0XFF3c5aa6);
  Color get lightRed => const Color(0XFFFF4F26);
  Color get shadowRed => const Color(0XFFFF100F);
}

extension ColorsAppExtension on BuildContext {
  ColorsApp get colorsApp => ColorsApp.instance;
}
