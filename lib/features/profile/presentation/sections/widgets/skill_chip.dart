import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/features/profile/domain/entities/skill_entity.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.skill});

  final SkillEntity skill;

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: skill.icon != null ? FaIcon(skill.icon) : null,
      label: Text(skill.name),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Theme.of(context).colorScheme.primary.withAlpha(76),
        ),
      ),
    );
  }
}
