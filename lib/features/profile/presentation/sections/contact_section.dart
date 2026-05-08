import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/features/profile/presentation/pages/widgets/title_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'widgets/desktop_contact.dart';
import 'widgets/mobile_contact.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: isDesktop ? 64 : 16,
      ),
      width: double.infinity,
      color: AppColors.surface,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              TitleWidget(title: "Get In Touch"),
              FadeInUp(
                delay: const Duration(milliseconds: 400),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 800),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.cardBackground,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: AppColors.primary.withAlpha((0.5 * 255).toInt()),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withAlpha(
                            (0.1 * 255).toInt(),
                          ),
                          blurRadius: 30,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(40),
                      child: isDesktop
                          ? DesktopContact()
                          : MobileContact(),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 80),
              Text(
                "© 2026 Ehab Mostafa Mohamed. Built with Flutter.",
                style: TextStyle(
                  color: AppColors.textSecondary.withAlpha((0.5 * 255).toInt()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
