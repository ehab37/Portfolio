import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/features/profile/domain/entities/skill_entity.dart';

class SkillChip extends StatelessWidget {
  const SkillChip({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: AppColors.cardBackground,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: AppColors.primary.withAlpha((0.3 * 255).toInt()),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha((0.2 * 255).toInt()),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
class Chip2 extends StatelessWidget {
  const Chip2({super.key, required this.skill});
  final SkillEntity skill;

  @override
  Widget build(BuildContext context) {
    return Chip(
      avatar: skill.icon != null
          ? Icon(
        skill.icon,
        size: 20,
        color: Theme.of(context).colorScheme.secondary,
      )
          : null,
      label: Text(skill.name),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 12,
      ),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
        color: Colors.white,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(
          color: Theme.of(
            context,
          ).colorScheme.secondary.withAlpha(76),
        ),
      ),
    );
  }
}
