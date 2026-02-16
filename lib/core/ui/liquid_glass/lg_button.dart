import 'package:flutter/material.dart';
import 'liquid_glass_config.dart';
import 'lg_container.dart';

class LGButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const LGButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return LGContainer(
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(16),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
