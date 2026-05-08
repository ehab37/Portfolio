import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/assets_constants.dart';
import 'package:portfolio/features/profile/presentation/sections/widgets/content.dart';

class DesktopHero extends StatelessWidget {
  const DesktopHero({
    super.key,
    required this.onViewProjectsPressed,
    required this.onContactPressed,
  });

  final VoidCallback onViewProjectsPressed;
  final VoidCallback onContactPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Content(
            alignment: CrossAxisAlignment.start,
            onViewProjectsPressed: onViewProjectsPressed,
            onContactPressed: onContactPressed,
          ),
        ),
        Expanded(
          flex: 2,
          child: FadeInRight(
            child: Center(
              child: Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.primary, width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary.withAlpha((0.5 * 255).toInt()),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                  color: Colors.black,
                  image: const DecorationImage(
                    image: AssetImage(AssetsConstants.profile),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
