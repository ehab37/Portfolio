import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:portfolio/features/profile/data/local_data_source.dart';
import 'package:portfolio/features/profile/presentation/pages/widgets/title_widget.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveBreakpoints.of(context).isDesktop;
    final isTablet = ResponsiveBreakpoints.of(context).isTablet;

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
              TitleWidget(title: "My Projects"),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: LocalDataSource.getProjects().length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: isDesktop ? 3 : (isTablet ? 2 : 1),
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  childAspectRatio: isDesktop ? 0.8 : 1.2,
                ),
                itemBuilder: (context, index) {
                  return FadeInUp(
                    delay: Duration(milliseconds: 200 * index),
                    child: ProjectCard(
                      project: LocalDataSource.getProjects()[index],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
