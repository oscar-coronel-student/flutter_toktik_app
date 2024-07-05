import 'package:flutter/material.dart';

import 'package:toktik/domain/models/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';


class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videoPostRepository;

  bool initialLoading = true;
  final List<VideoPost> videos;

  DiscoverProvider({
    required this.videoPostRepository
  }):
    videos = [];

  Future<void> loadVideos() async {
    await Future.delayed(const Duration( seconds: 2 ));

    final List<VideoPost> videoPostList = await videoPostRepository.getTrendingVideosByPage(0);
    
    initialLoading = false;
    videos.addAll(videoPostList);

    notifyListeners();
  }

}