import 'package:deep_drill/app/router/app_router.dart';
import 'package:deep_drill/features/monetization/presentation/global_ad_overlay.dart';
import 'package:flutter/material.dart';
import 'package:adaptive_platform_ui/adaptive_platform_ui.dart';

class DeepDrillApp extends StatelessWidget {
  const DeepDrillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveApp(
      builder: (context, child) {
        return Stack(
          children: [
            Positioned.fill(child: child ?? const SizedBox.shrink()),
            const GlobalAdOverlay(),
          ],
        );
      },
      home: const AppRouter(),
    );
  }
}