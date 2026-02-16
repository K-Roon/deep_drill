import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'liquid_glass_config.dart';
import 'liquid_glass_theme.dart';

class LGContainer extends StatelessWidget {
  final Widget child;
  final BorderRadius borderRadius;
  final EdgeInsetsGeometry padding;

  const LGContainer({
    super.key,
    required this.child,
    this.borderRadius = const BorderRadius.all(Radius.circular(20)),
    this.padding = const EdgeInsets.all(12),
  });

  @override
  Widget build(BuildContext context) {
    if (!LiquidGlassConfig.enabled) {
      // 글라스 효과 비활성
      return Container(
        padding: padding,
        child: child,
      );
    }

    return ClipRRect(
      borderRadius: borderRadius,
      child: Stack(
        children: [
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
            child: Container(
              decoration: BoxDecoration(
                color: LiquidGlassTheme.glassBaseColor(context),
                borderRadius: borderRadius,
                border: Border.all(
                  color: Colors.white.withOpacity(0.25),
                  width: 1.3,
                ),
              ),
              padding: padding,
              child: child,
            ),
          ),
        ],
      ),
    );
  }
}
