import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/models/video_post.dart';
import 'package:toktik/infrastructure/mappers/video_post_list_mapper.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class LocalVideosDatasourceImpl implements VideoPostDatasource {

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration( seconds: 2 ));
    final oVideoPostListMapper = VideoPostListMapper.fromJsonList(videoPosts);
    return oVideoPostListMapper.toVideoPostModelList();
  }
}