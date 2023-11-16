import 'package:flutter/material.dart';

class AppTheme {
  static final themeLight = ThemeData.light(
    useMaterial3: true,
  ).copyWith(
    colorScheme: ColorScheme.light(
      background: Colors.white70,
      primaryContainer: Colors.indigoAccent[100],
      secondaryContainer: Colors.deepPurple,
    ),
  );

  static final themeDark = ThemeData.dark(
    useMaterial3: true,
  ).copyWith(
    colorScheme: ColorScheme.light(
      background: Colors.black54,
      primaryContainer: Colors.indigoAccent,
      secondaryContainer: Colors.deepPurple[700],
    ),
  );
}
