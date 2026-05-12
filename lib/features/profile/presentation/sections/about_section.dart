import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'widgets/desktop_about.dart';
import 'widgets/mobile_about.dart';

class AboutSection extends StatelessWidget {
  final VoidCallback onContactPressed;
  final VoidCallback onViewProjectsPressed;

  const AboutSection({
    super.key,
    required this.onContactPressed,
    required this.onViewProjectsPressed,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return Container(
      height: size.height,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: isDesktop ? 64 : 16),
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: isDesktop
            ? DesktopAbout(
                onViewProjectsPressed: onViewProjectsPressed,
                onContactPressed: onContactPressed,
              )
            : MobileAbout(
                onViewProjectsPressed: onViewProjectsPressed,
                onContactPressed: onContactPressed,
              ),
      ),
    );
  }
}
