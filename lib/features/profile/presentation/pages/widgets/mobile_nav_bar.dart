import 'package:flutter/material.dart';
import 'package:portfolio/core/functions/scroll_to_section.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/constants.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({super.key, required this.sectionKeys});

  final Map<String, GlobalKey> sectionKeys;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.surface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        final keys = [
          sectionKeys[AppConstants.aboutKey]!,
          sectionKeys[AppConstants.skillsKey]!,
          sectionKeys[AppConstants.projectsKey]!,
          sectionKeys[AppConstants.educationKey]!,
          sectionKeys[AppConstants.contactKey]!,
        ];
        scrollToSection(keys[index]);
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'About'),
        BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Skills'),
        BottomNavigationBarItem(icon: Icon(Icons.work), label: 'Projects'),
        BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Education'),
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_mail),
          label: 'Contact',
        ),
      ],
    );
  }
}
