import 'package:flutter/material.dart';
import '../material_colors.dart';

/// A centralized collection of semantic color tokens for the application.
///
/// This class maps raw material colors to functional roles like 'primary',
/// 'success', and 'background' to ensure design consistency.
class CSemanticColors {
  CSemanticColors._();

  /// The main brand color used for primary UI elements and actions.
  static const Color primary = MaterialColors.indigoAccent;

  /// The secondary brand color used for accents and highlights.
  static const Color secondary = MaterialColors.cyanAccent;

  /// Color used to indicate successful actions or positive states.
  static const Color success = MaterialColors.pastelGreen;

  /// Color used for warning messages or cautionary states.
  static const Color warning = MaterialColors.amber;

  /// Color used for errors, alerts, or dangerous actions.
  static const Color danger = MaterialColors.deepOrange;

  /// The default background color for the application screens.
  static const Color background = MaterialColors.offWhite;

  /// Color used for elevated surfaces like cards and dialogs.
  static const Color surface = MaterialColors.white;

  /// The primary text color, optimized for high readability.
  static const Color textPrimary = MaterialColors.jet;

  /// The secondary text color, used for subtitles or less important info.
  static const Color textSecondary = MaterialColors.stoneGray;
}
