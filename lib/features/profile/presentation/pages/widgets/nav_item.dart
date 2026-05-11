import 'package:flutter/material.dart';
import 'package:portfolio/core/functions/scroll_to_section.dart';
import 'package:portfolio/core/theme/app_colors.dart';

class NavItem extends StatelessWidget {
  const NavItem(
    this.title,
    this.sectionKey, {
    super.key,
    this.isSelected = false,
  });

  final String title;
  final GlobalKey? sectionKey;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextButton(
          onPressed: () => scrollToSection(sectionKey!),
          style: TextButton.styleFrom(
            foregroundColor: isSelected
                ? AppColors.primary
                : Theme.of(context).textTheme.bodyMedium?.color,
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        if (isSelected)
          Container(height: 2, width: 20, color: AppColors.primary),
      ],
    );
  }
}
