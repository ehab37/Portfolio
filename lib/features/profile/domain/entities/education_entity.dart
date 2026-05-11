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
}
