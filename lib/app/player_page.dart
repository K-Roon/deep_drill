import 'package:flutter/material.dart';
import '../core/ui/liquid_glass/lg_app_bar.dart';

class PlayerPage extends StatelessWidget {
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LGAppBar(title: "🎧 플레이어"),
      body: const Center(
        child: Text("🎶 플레이어 화면"),
      ),
    );
  }
}
