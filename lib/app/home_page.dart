import 'package:flutter/material.dart';
import '../core/ui/liquid_glass/lg_app_bar.dart';
import '../core/ui/liquid_glass/lg_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const LGAppBar(title: "홈"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "📂 홈 화면",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            LGButton(
              label: "설정으로 가기",
              onPressed: () {
                // 탭으로 이동
                DefaultTabController.of(context)?.animateTo(2);
              },
            ),
          ],
        ),
      ),
    );
  }
}
