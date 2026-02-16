import 'package:flutter/material.dart';
import 'lg_container.dart';

class LGAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final String title;
  final List<Widget>? actions;

  const LGAppBar({
    super.key,
    this.leading,
    required this.title,
    this.actions,
  });

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: LGContainer(
        borderRadius: BorderRadius.zero,
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          children: [
            if (leading != null) leading!,
            Expanded(
              child: Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ),
            if (actions != null) Row(children: actions!),
          ],
        ),
      ),
    );
  }
}
