import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:videogallery/src/data/models/pixabay_video.dart';

part 'pixabay_remote_data_source.g.dart';

@RestApi(baseUrl: "https://pixabay.com/api/")
abstract class PixabayRemoteDataSource {
  factory PixabayRemoteDataSource(Dio dio, {String baseUrl}) =
      _PixabayRemoteDataSource;

  @GET("videos/")
  Future<PixabayVideoList> fetchVideos(
    @Query("key") String apiKey,
    @Query("q") String? query,
    @Query("page") int page,
    @Query("per_page") int pageSize,
  );
}
