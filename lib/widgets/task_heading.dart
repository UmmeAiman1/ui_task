import 'package:flutter/material.dart';
import 'package:hiring_task/app_themes.dart';


class HeadingRow extends StatelessWidget {
  final String title;
  final bool showIcons; 

   const HeadingRow({super.key, required this.title, this.showIcons = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 13,
            color: AppThemes.lightTheme.colorScheme.primary,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(width: 8),
        
        if (showIcons) ...[
          const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.arrow_drop_up,
                size: 20,
              ),
              Icon(
                Icons.arrow_drop_down,
                size: 20,
              ),
            ],
          ),
        ],
      ],
    );
  }
}
