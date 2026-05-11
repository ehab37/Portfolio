import 'package:flutter/material.dart';
import 'package:portfolio/core/functions/scroll_to_section.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'package:portfolio/features/profile/presentation/sections/contact_section.dart';
import 'package:portfolio/features/profile/presentation/sections/education_section.dart';
import 'package:portfolio/features/profile/presentation/sections/hero_section.dart';
import 'package:portfolio/features/profile/presentation/sections/projects_section.dart';
import 'package:portfolio/features/profile/presentation/sections/skills_section.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'widgets/desktop_nav_bar.dart';
import 'widgets/mobile_nav_bar.dart';

class PortfolioScreen extends StatefulWidget {
  const PortfolioScreen({super.key});

  @override
  State<PortfolioScreen> createState() => _PortfolioScreenState();
}

class _PortfolioScreenState extends State<PortfolioScreen> {
  final ScrollController scrollController = ScrollController();
  final Map<String, GlobalKey> sectionKeys = {
    AppConstants.aboutKey: GlobalKey(),
    AppConstants.skillsKey: GlobalKey(),
    AppConstants.projectsKey: GlobalKey(),
    AppConstants.educationKey: GlobalKey(),
    AppConstants.contactKey: GlobalKey(),
  };
  bool showBackToTop = false;
  String activeSection = AppConstants.aboutKey;

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    // Back to top button visibility
    if (scrollController.offset > 300) {
      if (!showBackToTop) setState(() => showBackToTop = true);
    } else {
      if (showBackToTop) setState(() => showBackToTop = false);
    }

    // Active section detection
    String bestMatch = activeSection;
    double minDistance = double.infinity;

    for (var entry in sectionKeys.entries) {
      final context = entry.value.currentContext;
      if (context != null) {
        final box = context.findRenderObject() as RenderBox;
        final offset = box.localToGlobal(Offset.zero).dy;

        // We consider a section active if its top is closest to the top of the screen (0)
        // Adjusting with a small offset (e.g., 100) to make the transition feel more natural
        final distance = (offset - 100).abs();
        if (distance < minDistance) {
          minDistance = distance;
          bestMatch = entry.key;
        }
      }
    }

    if (activeSection != bestMatch) {
      setState(() {
        activeSection = bestMatch;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return Scaffold(
      bottomNavigationBar: !isDesktop
          ? MobileNavBar(sectionKeys: sectionKeys, activeSection: activeSection)
          : null,
      floatingActionButton: showBackToTop
          ? FloatingActionButton(
              onPressed: () =>
                  scrollToSection(sectionKeys[AppConstants.aboutKey]!),
              backgroundColor: AppColors.primary,
              child: const Icon(Icons.arrow_upward, color: Colors.black),
            )
          : null,
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                HeroSection(
                  key: sectionKeys[AppConstants.aboutKey],
                  onContactPressed: () =>
                      scrollToSection(sectionKeys[AppConstants.contactKey]!),
                  onViewProjectsPressed: () =>
                      scrollToSection(sectionKeys[AppConstants.projectsKey]!),
                ),
                SkillsSection(key: sectionKeys[AppConstants.skillsKey]),
                ProjectsSection(key: sectionKeys[AppConstants.projectsKey]),
                EducationSection(key: sectionKeys[AppConstants.educationKey]),
                ContactSection(key: sectionKeys[AppConstants.contactKey]),
              ],
            ),
          ),
          Visibility(
            visible: isDesktop,
            child: Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: DesktopNavBar(
                scrollController: scrollController,
                sectionKeys: sectionKeys,
                activeSection: activeSection,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
