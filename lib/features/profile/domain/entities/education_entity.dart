class EducationEntity {
  final String title;
  final String organization;
  final String period;
  final String? description;

  EducationEntity({
    required this.title,
    required this.organization,
    required this.period,
    this.description,
  });

  static final List<EducationEntity> educationItems = [
    EducationEntity(
      title: 'B.Sc. Computers and Informatics',
      organization: 'Zagazig University',
      period: '2019 – 2023',
      description: 'Grade: Very Good',
    ),
    EducationEntity(
      title: 'Flutter Advanced Course: Bloc & MVVM Pattern',
      organization: 'Professional Training',
      period: '2023',
    ),
    EducationEntity(
      title: 'Flutter & Dart Complete Development Course',
      organization: 'Udemy',
      period: '2022',
    ),
    EducationEntity(
      title: 'The Complete Flutter Development Guide',
      organization: 'Online',
      period: '2022',
    ),
    EducationEntity(
      title: 'Responsive and Adaptive UI/UX Design',
      organization: 'Certification',
      period: '2023',
    ),
  ];
}
