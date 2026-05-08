import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'widgets/desktop_hero.dart';
import 'widgets/mobile_hero.dart';

class HeroSection extends StatelessWidget {
  final VoidCallback onContactPressed;
  final VoidCallback onViewProjectsPressed;

  const HeroSection({
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
            ? DesktopHero(
                onViewProjectsPressed: onViewProjectsPressed,
                onContactPressed: onContactPressed,
              )
            : MobileHero(
                onViewProjectsPressed: onViewProjectsPressed,
                onContactPressed: onContactPressed,
              ),
      ),
    );
  }
}
