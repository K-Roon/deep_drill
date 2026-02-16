import 'package:flutter/material.dart';
import 'bottom_tab_page.dart';

class DeepDrillApp extends StatelessWidget {
  const DeepDrillApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DeepDrill",
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.cyanAccent,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.tealAccent,
      ),
      home: const BottomTabPage(),
    );
  }
}
