import 'dart:ui';
import 'package:flutter/material.dart';
import 'liquid_glass_config.dart';

class LGContainer extends StatelessWidget {
  final Widget child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;
  final double blurStrength;
  final double borderOpacity;

  const LGContainer({
    super.key,
    required this.child,
    this.borderRadius,
    this.padding,
    this.blurStrength = 15.0, // 블러 강도 기본값
    this.borderOpacity = 0.2, // 테두리 투명도 기본값
  });

  @override
  Widget build(BuildContext context) {
    // borderRadius가 없으면 기본값 20 적용
    final effectiveBorderRadius = borderRadius ?? BorderRadius.circular(20);
    final effectivePadding = padding ?? const EdgeInsets.all(12);

    // 설정에서 비활성화했다면 그냥 투명 컨테이너 반환
    if (!LiquidGlassConfig.enabled) {
      return Container(
        padding: effectivePadding,
        child: child,
      );
    }

    return ClipRRect(
      borderRadius: effectiveBorderRadius,
      child: BackdropFilter(
        // 핵심 1: 배경을 흐리게 만듦 (Skia/Impeller 엔진 사용)
        filter: ImageFilter.blur(sigmaX: blurStrength, sigmaY: blurStrength),
        child: Container(
          padding: effectivePadding,
          decoration: BoxDecoration(
            // 핵심 2: 유리 질감 (그라데이션으로 빛 반사 표현)
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white.withOpacity(0.2),  // 왼쪽 위는 조금 더 밝게 (빛 반사)
                Colors.white.withOpacity(0.05), // 오른쪽 아래는 투명하게
              ],
            ),
            borderRadius: effectiveBorderRadius,
            // 핵심 3: 얇은 테두리로 경계선 강조 (유리 두께감)
            border: Border.all(
              color: Colors.white.withOpacity(borderOpacity),
              width: 1.0,
            ),
            // 선택 사항: 그림자 (유리가 떠 있는 느낌을 원하면 주석 해제)
            /*
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
            */
          ),
          child: child,
        ),
      ),
    );
  }
}