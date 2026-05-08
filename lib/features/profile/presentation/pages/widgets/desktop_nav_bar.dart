import 'package:flutter/material.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/constants.dart';

import 'nav_item.dart';

class DesktopNavBar extends StatelessWidget {
  final ScrollController scrollController;
  final Map<String, GlobalKey> sectionKeys;

  const DesktopNavBar({
    super.key,
    required this.scrollController,
    required this.sectionKeys,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      color: Theme.of(context).scaffoldBackgroundColor.withAlpha(220),
      child: Row(
        children: [
          Text(
            '< Ehab />',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              fontSize: 25,
            ),
          ),
          Spacer(),
          NavItem('About', sectionKeys[AppConstants.aboutKey]),
          const SizedBox(width: 20),
          NavItem('Skills', sectionKeys[AppConstants.skillsKey]),
          const SizedBox(width: 20),
          NavItem('Projects', sectionKeys[AppConstants.projectsKey]),
          const SizedBox(width: 20),
          NavItem('Education', sectionKeys[AppConstants.educationKey]),
          const SizedBox(width: 20),
          NavItem('Contact', sectionKeys[AppConstants.contactKey]),
        ],
      ),
    );
  }
}
