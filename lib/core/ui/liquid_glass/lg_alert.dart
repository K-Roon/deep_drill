import 'package:flutter/material.dart';
import 'lg_container.dart';
import 'lg_button.dart';

class LGAlert {
  static Future<bool?> show(
      BuildContext context, {
        required String title,
        required String body,
        required String confirm,
        String? cancel,
      }) {
    return showDialog<bool>(
      context: context,
      builder: (c) {
        return LGContainer(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(title, style: Theme.of(context).textTheme.titleLarge),
              SizedBox(height: 12),
              Text(body, style: Theme.of(context).textTheme.bodyMedium),
              SizedBox(height: 16),
              Row(
                children: [
                  if (cancel != null)
                    Expanded(
                      child: LGButton(
                        label: cancel,
                        onPressed: () => Navigator.of(c).pop(false),
                      ),
                    ),
                  SizedBox(width: 8),
                  Expanded(
                    child: LGButton(
                      label: confirm,
                      onPressed: () => Navigator.of(c).pop(true),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
