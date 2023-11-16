import 'package:calc_exercises/src/calc_page.dart';
import 'package:calc_exercises/src/shared/themes/app_theme.dart';
import 'package:flutter/material.dart';

class AppMain extends StatelessWidget {
  const AppMain({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.themeLight,
      darkTheme: AppTheme.themeDark,
      home: const CalcPage(),
    );
  }
}
