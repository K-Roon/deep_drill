import 'package:flutter/material.dart';
import '../core/ui/liquid_glass/lg_app_bar.dart';
import '../core/ui/liquid_glass/lg_button.dart';
import '../core/ui/liquid_glass/liquid_glass_config.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LGAppBar(title: "⚙️ 설정"),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            LGButton(
              label: "리퀴드 글라스 토글",
              onPressed: () {
                LiquidGlassConfig.updateEnabled(!LiquidGlassConfig.enabled);
              },
            ),
            const SizedBox(height: 12),
            Text("리퀴드 글라스가 ${LiquidGlassConfig.enabled ? "ON" : "OFF"}입니다."),
          ],
        ),
      ),
    );
  }
}
