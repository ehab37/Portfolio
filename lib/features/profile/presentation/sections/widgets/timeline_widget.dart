import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/features/profile/domain/entities/education_entity.dart';

class TimelineWidget extends StatelessWidget {
  const TimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: EducationEntity.educationItems.map((item) {
        final index = EducationEntity.educationItems.indexOf(item);
        return FadeInLeft(
          delay: Duration(milliseconds: 200 * index),
          child: IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Icon(Icons.verified, color: AppColors.primary),
                    if (index != EducationEntity.educationItems.length - 1)
                      Expanded(
                        child: Container(
                          width: 2,
                          color: AppColors.primary.withAlpha(
                            (0.5 * 255).toInt(),
                          ),
                        ),
                      ),
                  ],
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "${item.organization} | ${item.period}",
                          style: const TextStyle(
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        if (item.description != null) ...[
                          const SizedBox(height: 8),
                          Text(
                            item.description!,
                            style: const TextStyle(
                              color: AppColors.textSecondary,
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
