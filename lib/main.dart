import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:toktik/config/themes/app_theme.dart';
import 'package:toktik/infrastructure/datasources/local_videos_datasource_impl.dart';
import 'package:toktik/infrastructure/repositories/video_posts_repository_impl.dart';
import 'package:toktik/presentation/screens/discover/discover_screen.dart';
import 'package:toktik/presentation/providers/discover_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    final videoPostsRepository = VideoPostsRepositoryImpl(
      dataSource: LocalVideosDatasourceImpl()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DiscoverProvider>(
          lazy: false,
          create: (_) => DiscoverProvider(
            videoPostRepository: videoPostsRepository
          )..loadVideos()
        )
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