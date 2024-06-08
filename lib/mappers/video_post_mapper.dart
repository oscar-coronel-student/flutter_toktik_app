import 'dart:convert';

import 'package:toktik/models/video_post.dart';

VideoPostMapper videoPostMapperFromJson(String str) => VideoPostMapper.fromJson(json.decode(str));

String videoPostMapperToJson(VideoPostMapper data) => json.encode(data.toJson());

class VideoPostMapper {
    final String name;
    final String videoUrl;
    final int likes;
    final int views;

    VideoPostMapper({
        required this.name,
        required this.videoUrl,
        required this.likes,
        required this.views,
    });

    factory VideoPostMapper.fromJson(Map<String, dynamic> json) => VideoPostMapper(
        name: json["name"],
        videoUrl: json["videoUrl"],
        likes: json["likes"],
        views: json["views"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "videoUrl": videoUrl,
        "likes": likes,
        "views": views,
    };

    VideoPost toVideoPostModel() => VideoPost(
      name: name, 
      videoUrl: videoUrl,
      likes: likes,
      views: views
    );
}
