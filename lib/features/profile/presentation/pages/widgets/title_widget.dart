import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/text_style_helper.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeInUp(
          child: Text(
            title,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
              fontSize: TextStyleHelper.getSectionTitleSize(context),
            ),
          ),
        ),
        const SizedBox(height: 16),
        FadeInUp(
          delay: const Duration(milliseconds: 200),
          child: Container(
            height: 4,
            width: 60,
            decoration: BoxDecoration(
              color: AppColors.primary,
              borderRadius: BorderRadius.circular(2),
            ),
          ),
        ),
        const SizedBox(height: 64),
      ],
    );
  }
}
