import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/assets_constants.dart';
import 'package:portfolio/features/profile/presentation/sections/widgets/content.dart';

class MobileAbout extends StatelessWidget {
  const MobileAbout({
    super.key,
    required this.onViewProjectsPressed,
    required this.onContactPressed,
  });

  final VoidCallback onViewProjectsPressed;
  final VoidCallback onContactPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FadeInDown(
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: AppColors.primary, width: 3),
              image: const DecorationImage(
                image: AssetImage(AssetsConstants.profile),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        const SizedBox(height: 32),
        Content(
          alignment: CrossAxisAlignment.center,
          onViewProjectsPressed: onViewProjectsPressed,
          onContactPressed: onContactPressed,
        ),
      ],
    );
  }
}
