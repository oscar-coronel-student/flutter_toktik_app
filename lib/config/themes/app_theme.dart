import 'package:flutter/material.dart';


class AppTheme {

  const AppTheme();

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );

}