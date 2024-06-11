import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:toktik/config/themes/app_theme.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DiscoverProvider>(create: (_) => DiscoverProvider())
      ],
      child: MaterialApp(
        theme: const AppTheme().getTheme(),
        debugShowCheckedModeBanner: false,
        title: 'TokTik',
        home: const DiscoverScreen()
      ),
    );
  }
}