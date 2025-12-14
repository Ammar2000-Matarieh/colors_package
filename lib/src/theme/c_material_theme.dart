import 'package:flutter/material.dart';
import '../semantic/c_semantic_colors.dart';

class CTheme {
  CTheme._();

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
