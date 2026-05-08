import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/theme/app_colors.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactItem extends StatelessWidget {
  const ContactItem({
    super.key,
    required this.icon,
    required this.label,
    required this.url,
  });

  final FaIconData icon;
  final String label;
  final String url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => launchUrl(Uri.parse(url)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.primary.withAlpha((0.1 * 255).toInt()),
              shape: BoxShape.circle,
            ),
            child: FaIcon(icon, color: AppColors.primary, size: 28),
          ),
          const SizedBox(height: 12),
          Text(
            label,
            style: const TextStyle(
              color: AppColors.textPrimary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
