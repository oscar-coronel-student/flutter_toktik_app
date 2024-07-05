import 'package:toktik/domain/datasources/video_post_datasource.dart';
import 'package:toktik/domain/models/video_post.dart';
import 'package:toktik/domain/repositories/video_post_repository.dart';


class VideoPostsRepositoryImpl implements VideoPostRepository {

  final VideoPostDatasource dataSource;

  const VideoPostsRepositoryImpl({
    required this.dataSource
  });
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    return dataSource.getTrendingVideosByPage(page);
  }
}