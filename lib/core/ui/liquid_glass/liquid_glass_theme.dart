import 'package:flutter/material.dart';

class LiquidGlassTheme {
  static Color glassBaseColor(BuildContext context) {
    final theme = Theme.of(context);

    // 다크/라이트 대응
    final base = theme.brightness == Brightness.dark
        ? Colors.black.withOpacity(0.4)
        : Colors.white.withOpacity(0.35);

    return base;
  }
}
