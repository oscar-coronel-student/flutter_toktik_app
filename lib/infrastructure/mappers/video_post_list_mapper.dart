import 'package:toktik/infrastructure/mappers/video_post_mapper.dart';
import 'package:toktik/domain/models/video_post.dart';


class VideoPostListMapper {

  final List<VideoPostMapper> videos;

  VideoPostListMapper({
    required this.videos
  });

  factory VideoPostListMapper.fromJsonList(List<Map<String, dynamic>> list){
    final videos = list.map((e){
      return VideoPostMapper.fromJson(e);
    }).toList();

    return VideoPostListMapper(
      videos: videos
    );
  }

  List<Map<String, dynamic>> toJsonList() {
    return videos.map((e){
      return e.toJson();
    }).toList();
  }

  List<VideoPost> toVideoPostModelList() {
    return videos.map((e){
      return e.toVideoPostModel();
    }).toList();
  }

}