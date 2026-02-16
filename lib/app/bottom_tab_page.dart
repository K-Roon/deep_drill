import 'package:deep_drill/app/player_page.dart';
import 'package:deep_drill/app/settings_page.dart';
import 'package:flutter/material.dart';
import '../core/ui/liquid_glass/lg_tab_bar.dart';
import '../core/ui/liquid_glass/lg_container.dart';
import '../features/monetization/presentation/global_ad_overlay.dart';
import 'home_page.dart';  // 광고

class BottomTabPage extends StatefulWidget {
  const BottomTabPage({super.key});

  @override
  State<BottomTabPage> createState() => _BottomTabPageState();
}

class _BottomTabPageState extends State<BottomTabPage> {
  int _currentIndex = 0;
  final List<Widget> _screens = const [
    HomePage(),
    PlayerPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: _screens[_currentIndex]),
          // 광고 항상 보이기
          SizedBox(
            height: 60,
            child: LGContainer(
              padding: EdgeInsets.zero,
              child: const GlobalAdOverlay(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: LGTabBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "홈"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle), label: "플레이"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "설정"),
        ],
      ),
    );
  }
}
