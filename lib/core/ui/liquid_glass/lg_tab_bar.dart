import 'package:flutter/material.dart';
import 'lg_container.dart';

class LGTabBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int> onTap;
  final int currentIndex;

  const LGTabBar({
    super.key,
    required this.items,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return LGContainer(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        items: items,
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white70,
      ),
    );
  }
}
