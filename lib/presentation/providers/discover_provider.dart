import 'package:flutter/material.dart';

import 'package:toktik/mappers/video_post_list_mapper.dart';
import 'package:toktik/models/video_post.dart';
import 'package:toktik/shared/data/local_video_post.dart';


class DiscoverProvider extends ChangeNotifier {

  bool initialLoading = true;
  final List<VideoPost> videos;

  DiscoverProvider():
    videos = [];

  Future<void> loadVideos() async {
    final videoPostsModel = VideoPostListMapper.fromJsonList(videoPosts);
    
    initialLoading = false;
    videos.addAll(videoPostsModel.toVideoPostModelList());

    notifyListeners();
  }

}