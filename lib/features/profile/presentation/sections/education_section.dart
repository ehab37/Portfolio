import 'package:flutter/material.dart';
import 'package:portfolio/features/profile/presentation/pages/widgets/title_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'widgets/timeline_widget.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 80,
        horizontal: isDesktop ? 64 : 16,
      ),
      width: double.infinity,
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              TitleWidget(title: "Education & Certificates"),
              TimelineWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
