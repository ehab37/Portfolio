import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'contact_item.dart';

class MobileContact extends StatelessWidget {
  const MobileContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ContactItem(
          icon: FontAwesomeIcons.at,
          label: AppConstants.email,
          url: AppConstants.emailAction,
        ),
        const SizedBox(height: 24),
        ContactItem(
          icon: FontAwesomeIcons.phone,
          label: AppConstants.phoneStr,
          url: AppConstants.phoneAction,
        ),
        const SizedBox(height: 24),
        ContactItem(
          icon: FontAwesomeIcons.linkedin,
          label: "LinkedIn",
          url: AppConstants.linkedinUrl,
        ),
        const SizedBox(height: 24),
        ContactItem(
          icon: FontAwesomeIcons.github,
          label: "GitHub",
          url: AppConstants.githubUrl,
        ),
      ],
    );
  }
}
