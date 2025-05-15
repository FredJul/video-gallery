import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogallery/src/data/datasources/remote/pixabay_remote_data_source.dart';
import 'package:videogallery/src/data/models/pixabay_video.dart';
import 'package:videogallery/src/data/repositories/video_repository_impl.dart';

class MockPixabayRemoteDataSource extends Mock
    implements PixabayRemoteDataSource {}

void main() {
  late VideoRepositoryImpl videoRepository;
  late MockPixabayRemoteDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockPixabayRemoteDataSource();
    videoRepository = VideoRepositoryImpl(
      pixabayApiKey: 'testApiKey',
      pixabayRemoteDataSource: mockDataSource,
    );
  });

  const pixabayVideo = PixabayVideo(
    id: 1,
    user: 'Test User',
    userImageUrl: 'https://example.com/user.jpg',
    videoLinks: VideoLinks(
      tiny: VideoLink(
        videoUrl: 'https://example.com/video.mp4',
        thumbnailUrl: 'https://example.com/thumbnail.jpg',
      ),
      small: VideoLink(
        videoUrl: 'https://example.com/video_small.mp4',
        thumbnailUrl: 'https://example.com/thumbnail_small.jpg',
      ),
      medium: VideoLink(
        videoUrl: 'https://example.com/video_medium.mp4',
        thumbnailUrl: 'https://example.com/thumbnail_medium.jpg',
      ),
      large: VideoLink(
        videoUrl: 'https://example.com/video_large.mp4',
        thumbnailUrl: 'https://example.com/thumbnail_large.jpg',
      ),
    ),
  );

  const pixabayVideoList = PixabayVideoList(
    totalCount: 1,
    videos: [pixabayVideo],
  );

  test('should return video when API call is successful', () async {
    // arrange
    when(
      () => mockDataSource.fetchVideos(any(), any(), any(), any()),
    ).thenAnswer((_) async => pixabayVideoList);

    // act
    final videoListResult = await videoRepository.fetchVideos(
      page: 1,
      pageSize: 1,
    );

    // assert
    expect(videoListResult.isValue, isTrue);

    final videoList = videoListResult.asValue!.value;
    expect(videoList.length, equals(1));

    final video = videoList.first;
    expect(video.id, equals(1));
    expect(video.videoUrl, equals('https://example.com/video.mp4'));
    expect(video.thumbnailUrl, equals('https://example.com/thumbnail.jpg'));
    expect(video.user, equals('Test User'));
    expect(video.userImageUrl, equals('https://example.com/user.jpg'));
  });
}
