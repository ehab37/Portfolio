import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class TextStyleHelper {
  static double getHeroTitleSize(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) return 56;
    if (ResponsiveBreakpoints.of(context).isTablet) return 40;
    return 28;
  }

  static double getSectionTitleSize(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) return 36;
    if (ResponsiveBreakpoints.of(context).isTablet) return 28;
    return 24;
  }

  static double getBodySize(BuildContext context) {
    if (ResponsiveBreakpoints.of(context).isDesktop) return 18;
    return 16;
  }
}
