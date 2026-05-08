import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'core/theme/app_theme.dart';
import 'features/profile/presentation/pages/portfolio_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ehab Mostafa | Flutter Developer',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.darkTheme,
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 767, name: MOBILE),
          const Breakpoint(start: 768, end: 1200, name: TABLET),
          const Breakpoint(start: 1201, end: double.infinity, name: DESKTOP),
        ],
      ),
      home: const PortfolioScreen(),
    );
  }
}
