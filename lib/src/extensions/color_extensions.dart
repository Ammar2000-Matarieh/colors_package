import 'package:flutter/material.dart';

/// Extensions on [Color] to provide utility methods for Hex conversion,
/// lightness adjustment, and contrast calculation.
extension ColorX on Color {
  /// Converts the color to a hex string.
  ///
  /// If [withAlpha] is true, returns format #AARRGGBB,
  /// otherwise returns #RRGGBB.
  String toHex({bool withAlpha = true}) {
    // Following the Flutter 3.41+ recommendation for modern color components.
    // We convert the 0.0-1.0 double values back to 0-255 integers for Hex strings.
    final alphaChannel =
        (a * 255.0).round().clamp(0, 255).toRadixString(16).padLeft(2, '0');
    final redChannel =
        (r * 255.0).round().clamp(0, 255).toRadixString(16).padLeft(2, '0');
    final greenChannel =
        (g * 255.0).round().clamp(0, 255).toRadixString(16).padLeft(2, '0');
    final blueChannel =
        (b * 255.0).round().clamp(0, 255).toRadixString(16).padLeft(2, '0');

    if (withAlpha) {
      return '#$alphaChannel$redChannel$greenChannel$blueChannel'.toUpperCase();
    }
    return '#$redChannel$greenChannel$blueChannel'.toUpperCase();
  }

  /// Lightens the color by the given [amount] (0.0 to 1.0).
  Color lighten([double amount = .1]) {
    final hsl = HSLColor.fromColor(this);
    final hslLight =
        hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));
    return hslLight.toColor();
  }

  /// Darkens the color by the given [amount] (0.0 to 1.0).
  Color darken([double amount = .1]) {
    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));
    return hslDark.toColor();
  }

  /// Returns either [light] or [dark] color based on the contrast
  /// to ensure readability over this color.
  Color contrastColor({Color light = Colors.white, Color dark = Colors.black}) {
    // computeLuminance: 0 (black) to 1 (white)
    return computeLuminance() > 0.5 ? dark : light;
  }
}
