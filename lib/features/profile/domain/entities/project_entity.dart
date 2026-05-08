class ProjectEntity {
  final String title;
  final String description;
  final List<String> tags;
  final String githubUrl;

  ProjectEntity({
    required this.title,
    required this.description,
    required this.tags,
    required this.githubUrl,
  });
}
