import 'package:flutter/material.dart';
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
      SkillEntity(name: 'Code Generation', icon: Icons.settings),
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
            'Food ordering application featuring restaurant discovery, order checkout with delivery or pickup options, order tracking, and multi-app interfaces for Users, Delivery Drivers, and Restaurants.',
        tags: ['Flutter', 'Firebase', 'State Management'],
        githubUrl: '',
      ),
      ProjectEntity(
        title: 'Mass Market (E-commerce)',
        description:
            'Full-featured e-commerce app offering product browsing, advanced search and filtering, shopping cart, wishlist, RESTful APIs backend, and secure payment gateway integration.',
        tags: ['Flutter', 'Dart', 'REST API', 'Payments'],
        githubUrl: '',
      ),
      ProjectEntity(
        title: 'Curely (Medical App)',
        description:
            'Graduation project: A medical patient record app. Features include uploading medical data, finding nearby pharmacies, direct ambulance calling, and scheduled medicine reminders.',
        tags: ['Flutter', 'Clean Architecture', 'API'],
        githubUrl: '',
      ),
    ];
  }

  static List<Map<String, String>> getCertifications() {
    return [
      {
        'title': 'Flutter Advanced Course Bloc and MVVM Pattern',
        'description': 'Mastering state management with Bloc and Architecture.',
      },
      {
        'title': 'Flutter & Dart Complete Development Course',
        'description': 'Comprehensive Flutter development - Udemy.',
      },
      {
        'title': 'The Complete Flutter Development Guide',
        'description': 'Deep dive into Flutter development methodologies.',
      },
      {
        'title': 'Responsive and Adaptive UI/UX Design',
        'description': 'Building adaptive interfaces for all platforms.',
      },
    ];
  }

  static final List<ProjectEntity> projects = [
    ProjectEntity(
      title: 'Akla (Food App)',
      description:
          'Multi-role food ordering app. Users browse restaurants, order food, and track deliveries in real-time. Separate releases for delivery drivers and restaurant owners.',
      tags: ['Flutter', 'Firebase', 'Maps', 'Real-time Tracking'],
      githubUrl: 'https://github.com/ehab37/akla_user',
    ),
    ProjectEntity(
      title: 'Mass Market (E-commerce App)',
      description:
          'Full-featured e-commerce app with product browsing, advanced search/filtering, cart, wishlist, secure checkout, order tracking, and payment gateway via RESTful APIs.',
      tags: ['Flutter', 'REST API', 'Stripe', 'Bloc'],
      githubUrl: 'https://github.com/ehab37/mass_market',
    ),
    ProjectEntity(
      title: 'Curely (Medication App)',
      description:
          'Healthcare app for storing medical records, finding nearby pharmacies, calling an ambulance, and setting medicine reminders.',
      tags: ['Flutter', 'Firebase', 'Maps', 'Notifications'],
      githubUrl: 'https://github.com/ehab37/Curely',
    ),
  ];
  static const List<String> skills = [
    'OOP',
    'Dart',
    'Flutter',
    'State Management (Bloc/Cubit/Provider)',
    'RESTful API Integration',
    'Firebase',
    'Hive',
    'Git & GitHub',
    'Clean Architecture',
    'Dependency Injection (GetIt)',
    'Localization',
    'Responsive UI/UX',
    'Unit Testing',
    'Code Generation (build_runner)',
    'Payment Integration (PayPal/Stripe)',
    'Published on Google Play',
  ];
}
