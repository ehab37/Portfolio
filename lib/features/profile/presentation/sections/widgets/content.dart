import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/functions/download_cv.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/assets_constants.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'package:portfolio/core/utils/text_style_helper.dart';

class Content extends StatelessWidget {
  const Content({
    super.key,
    required this.alignment,
    required this.onViewProjectsPressed,
    required this.onContactPressed,
  });

  final CrossAxisAlignment alignment;
  final VoidCallback onViewProjectsPressed;
  final VoidCallback onContactPressed;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: alignment,
      children: [
        FadeInUp(
          child: Text(
            "Hi, I'm Ehab Mostafa Mohamed",
            style: TextStyle(
              fontSize: TextStyleHelper.getBodySize(context),
              color: AppColors.primary,
              letterSpacing: 2,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          height: 80,
          child: DefaultTextStyle(
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
              fontSize: TextStyleHelper.getHeroTitleSize(context),
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  AppConstants.myTitle,
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'Cross-Platform Expert',
                  speed: const Duration(milliseconds: 100),
                ),
                TypewriterAnimatedText(
                  'Problem Solver',
                  speed: const Duration(milliseconds: 100),
                ),
              ],
              repeatForever: true,
            ),
          ),
        ),
        const SizedBox(height: 16),
        FadeInUp(
          delay: const Duration(milliseconds: 500),
          child: Text(
            AppConstants.passion,
            textAlign: alignment == CrossAxisAlignment.center
                ? TextAlign.center
                : TextAlign.start,
            style: TextStyle(
              fontSize: TextStyleHelper.getBodySize(context),
              color: AppColors.textSecondary,
              height: 1.5,
            ),
          ),
        ),
        const SizedBox(height: 40),
        FadeInUp(
          delay: const Duration(milliseconds: 800),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            alignment: alignment == CrossAxisAlignment.center
                ? WrapAlignment.center
                : WrapAlignment.start,
            children: [
              ElevatedButton(
                onPressed: onViewProjectsPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 20,
                  ),
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
                child: const Text("View Projects"),
              ),
              OutlinedButton(
                onPressed: onContactPressed,
                style: OutlinedButton.styleFrom(
                  foregroundColor: AppColors.primary,
                  side: const BorderSide(color: AppColors.primary),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 20,
                  ),
                  textStyle: const TextStyle(fontWeight: FontWeight.bold),
                ),
                child: const Text("Contact Me"),
              ),
              TextButton.icon(
                onPressed: () => downloadCV(AssetsConstants.cvPath),
                icon: const Icon(Icons.download, color: AppColors.primary),
                label: const Text(
                  "Download CV",
                  style: TextStyle(color: AppColors.primary),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
