import 'package:flutter/material.dart';
import 'package:portfolio/core/functions/scroll_to_section.dart';

class NavItem extends StatelessWidget {
  const NavItem(this.title, this.sectionKey, {super.key});

  final String title;
  final GlobalKey? sectionKey;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => scrollToSection(sectionKey!),
      style: TextButton.styleFrom(
        foregroundColor: Theme.of(context).textTheme.bodyMedium?.color,
      ),
      child: Text(title, style: const TextStyle(fontSize: 16)),
    );
  }
}
