import 'package:flutter/material.dart';
import 'package:portfolio/core/functions/scroll_to_section.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/constants.dart';

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({
    super.key,
    required this.sectionKeys,
    required this.activeSection,
  });

  final Map<String, GlobalKey> sectionKeys;
  final String activeSection;

  @override
  Widget build(BuildContext context) {
    final keys = [
      AppConstants.aboutKey,
      AppConstants.skillsKey,
      AppConstants.projectsKey,
      AppConstants.educationKey,
      AppConstants.contactKey,
    ];
    final currentIndex = keys.indexOf(activeSection);

    return BottomNavigationBar(
      backgroundColor: AppColors.surface,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.white54,
      currentIndex: currentIndex != -1 ? currentIndex : 0,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        scrollToSection(sectionKeys[keys[index]]!);
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
