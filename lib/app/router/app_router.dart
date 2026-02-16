import 'package:flutter/material.dart';

class AppRouter extends StatefulWidget {
  const AppRouter({super.key});

  @override
  State<AppRouter> createState() => _AppRouterState();
}

class _AppRouterState extends State<AppRouter> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      const _LibraryPage(),
      const _PlayerPage(),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('deep-drill')),
      body: pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _index,
        onTap: (v) => setState(() => _index = v),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Library'),
          BottomNavigationBarItem(icon: Icon(Icons.play_arrow), label: 'Player'),
        ],
      ),
    );
  }
}

class _LibraryPage extends StatelessWidget {
  const _LibraryPage();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Library Page'));
  }
}

class _PlayerPage extends StatelessWidget {
  const _PlayerPage();

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Player Page'));
  }
}
