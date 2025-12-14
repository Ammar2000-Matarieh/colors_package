import 'package:flutter/material.dart';

extension ColorX on Color {
  String toHex({bool withAlpha = true}) {
    final a = alpha.toRadixString(16).padLeft(2, '0');
    final r = red.toRadixString(16).padLeft(2, '0');
    final g = green.toRadixString(16).padLeft(2, '0');
    final b = blue.toRadixString(16).padLeft(2, '0');
    return withAlpha ? '#$a$r$g$b' : '#$r$g$b';
  }

  Color lighten([double amount = .1]) {
    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }

  Color darken([double amount = .1]) {
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  Color contrastColor({Color light = Colors.white, Color dark = Colors.black}) {
    // luminance: 0..1
    return computeLuminance() > 0.5 ? dark : light;
  }
}
