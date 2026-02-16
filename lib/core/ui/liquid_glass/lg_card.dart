import 'package:flutter/material.dart';
import 'lg_container.dart';

class LGCard extends StatelessWidget {
  final Widget child;

  const LGCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return LGContainer(
      padding: EdgeInsets.all(14),
      borderRadius: BorderRadius.circular(18),
      child: child,
    );
  }
}
