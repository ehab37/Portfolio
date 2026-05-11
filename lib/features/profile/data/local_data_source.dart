import 'package:flutter/material.dart';
import 'package:portfolio/core/utils/assets_constants.dart';
import 'package:portfolio/features/profile/domain/entities/education_entity.dart';
import 'package:portfolio/features/profile/domain/entities/project_entity.dart';
import 'package:portfolio/features/profile/domain/entities/skill_entity.dart';

class LocalDataSource {
  static List<SkillEntity> getSkills() {
    return [
      SkillEntity(name: 'OOP principles', icon: Icons.data_object),
      SkillEntity(
        name: 'State Management (Bloc, provider)',
        icon: Icons.architecture,
      ),
      SkillEntity(name: 'RESTful API Integration', icon: Icons.api),
      SkillEntity(name: 'Dependency Injection (GetIt)', icon: Icons.extension),
      SkillEntity(name: 'Firebase and Hive', icon: Icons.storage),
      SkillEntity(name: 'Git - GitHub', icon: Icons.gite_sharp),
      SkillEntity(name: 'Localization', icon: Icons.language),
      SkillEntity(name: 'Responsive/Adaptive UI/UX', icon: Icons.desktop_mac),
      SkillEntity(name: 'Unit Testing', icon: Icons.bug_report),
      SkillEntity(name: 'Code Generation (build_runner)', icon: Icons.settings),
      SkillEntity(name: 'Clean Architecture', icon: Icons.layers),
      SkillEntity(name: 'Payment Integration', icon: Icons.payment),
      SkillEntity(name: 'Published Apps', icon: Icons.shop),
    ];
  }

  static List<ProjectEntity> getProjects() {
    return [
      ProjectEntity(
        title: 'Akla (Food App)',
        description:
            'Multi-role food ordering app. Users browse restaurants, order food, and track deliveries in real-time. Separate releases for delivery drivers and restaurant owners.',
        tags: ['Flutter', 'Firebase', 'Maps', 'Real-time Tracking'],
        githubUrl: 'https://github.com/ehab37/akla_user',
      ),
      ProjectEntity(
        title: 'Mass Market (E-commerce)',
        description:
            'Full-featured e-commerce app offering product browsing, advanced search and filtering, shopping cart, wishlist, RESTful APIs backend, and secure payment gateway integration.',
        tags: ['Flutter', 'REST API', 'Payment', 'Bloc'],
        githubUrl: 'https://github.com/ehab37/mass_market',
      ),
      ProjectEntity(
        title: 'Curely (Medical App)',
        description:
            'Graduation project: A medical patient record app. Features include uploading medical data, finding nearby pharmacies, direct ambulance calling, and scheduled medicine reminders.',
        tags: [
          'Flutter',
          'Firebase',
          'Maps',
          'Notifications',
          'Clean Architecture',
        ],
        githubUrl: 'https://github.com/ehab37/Curely',
        image: AssetsConstants.curely,
      ),
    ];
  }

  static List<EducationEntity> getEducations() {
    return [
      EducationEntity(
        title: 'B.Sc. Computers and Informatics',
        organization: 'Zagazig University',
        period: '2019 – 2023',
        description: 'Grade: Very Good',
      ),
      EducationEntity(
        title: 'Flutter Advanced Course: Bloc & MVVM Pattern',
        organization: 'Udemy',
        period: '2023',
        description: 'Deep dive into Flutter development methodologies.',
      ),
      EducationEntity(
        title: 'Flutter & Dart Complete Development Course',
        organization: 'Udemy',
        period: '2022',
        description:
            'Mastering Flutter framework and Dart programming language.',
      ),
      EducationEntity(
        title: 'Responsive and Adaptive UI/UX Design',
        organization: 'Udemy',
        period: '2023',
        description: 'Building adaptive interfaces for all platforms.',
      ),
    ];
  }
}
