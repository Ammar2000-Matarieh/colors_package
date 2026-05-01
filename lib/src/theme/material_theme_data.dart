import 'package:flutter/material.dart';
import '../semantic/semantic_colors.dart';

/// A utility class for generating consistent Material 3 themes.
///
/// Provides pre-configured light and dark themes with support for
/// dynamic seed colors.
class CTheme {
  CTheme._();

  /// Generates a Light [ThemeData] based on a [seed] color.
  ///
  /// If [seed] is null, it defaults to [CSemanticColors.primary].
  static ThemeData light({Color? seed}) {
    final Color seedColor = seed ?? CSemanticColors.primary;
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.light,
      ),
    );
  }

  /// Generates a Dark [ThemeData] based on a [seed] color.
  ///
  /// If [seed] is null, it defaults to [CSemanticColors.primary].
  static ThemeData dark({Color? seed}) {
    final Color seedColor = seed ?? CSemanticColors.primary;
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        brightness: Brightness.dark,
      ),
    );
  }
}
