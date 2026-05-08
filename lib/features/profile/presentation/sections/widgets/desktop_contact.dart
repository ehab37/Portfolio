import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/utils/constants.dart';
import 'contact_item.dart';

class DesktopContact extends StatelessWidget {
  const DesktopContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ContactItem(
          icon: FontAwesomeIcons.at,
          label: AppConstants.email,
          url: AppConstants.emailAction,
        ),
        ContactItem(
          icon: FontAwesomeIcons.phone,
          label: AppConstants.phoneStr,
          url: AppConstants.phoneAction,
        ),
        ContactItem(
          icon: FontAwesomeIcons.linkedin,
          label: "LinkedIn",
          url: AppConstants.linkedinUrl,
        ),
        ContactItem(
          icon: FontAwesomeIcons.github,
          label: "GitHub",
          url: AppConstants.githubUrl,
        ),
      ],
    );
  }
}
