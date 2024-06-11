import 'package:flutter/material.dart';

import 'package:toktik/mappers/video_post_list_mapper.dart';
import 'package:toktik/models/video_post.dart';
import 'package:toktik/shared/data/local_video_post.dart';


class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, DataSource

  bool initialLoading = true;
  final List<VideoPost> videos;

  DiscoverProvider():
    videos = [];

  Future<void> loadVideos() async {
    await Future.delayed(const Duration( seconds: 2 ));

    final videoPostList = VideoPostListMapper.fromJsonList(videoPosts);
    
    initialLoading = false;
    videos.addAll(videoPostList.toVideoPostModelList());

    notifyListeners();
  }

}