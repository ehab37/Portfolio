import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/features/profile/data/local_data_source.dart';
import 'package:portfolio/features/profile/presentation/pages/widgets/title_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'widgets/skill_chip.dart';

class SkillsSection extends StatelessWidget {
  const SkillsSection({super.key});

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleWidget(title: "Technical Skills"),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: List.generate(LocalDataSource.skills.length, (index) {
                  return FadeInUp(
                    delay: Duration(milliseconds: 100 * index),
                    child: SkillChip(label: LocalDataSource.skills[index]),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
