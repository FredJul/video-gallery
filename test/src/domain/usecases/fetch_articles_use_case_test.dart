import 'package:async/async.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogallery/src/domain/common/exceptions.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/domain/repositories/video_repository.dart';
import 'package:videogallery/src/domain/usecases/fetch_videos_use_case.dart';

class MockVideoRepository extends Mock implements VideoRepository {}

void main() {
  late FetchVideosUseCase fetchVideosUseCase;
  late MockVideoRepository mockVideoRepository;

  setUp(() {
    mockVideoRepository = MockVideoRepository();
    fetchVideosUseCase = FetchVideosUseCase(
      videoRepository: mockVideoRepository,
    );
  });

  final testVideos = [
    const Video(
      id: 1,
      videoUrl: 'https://example.com/video1.mp4',
      thumbnailUrl: 'https://example.com/thumbnail1.jpg',
      user: 'User1',
      userImageUrl: 'https://example.com/user1.jpg',
    ),
    const Video(
      id: 2,
      videoUrl: 'https://example.com/video2.mp4',
      thumbnailUrl: 'https://example.com/thumbnail2.jpg',
      user: 'User2',
      userImageUrl: 'https://example.com/user2.jpg',
    ),
  ];

  // TODO: theses tests are pretty useless and are here only for the sake of demonstration.
  // As stated in the UseCase class, in a real-world scenario, you might want to add some
  // business logic there and test it here.

  group('fetch videos', () {
    test('should get videos from the repository', () async {
      // arrange
      when(
        () => mockVideoRepository.fetchVideos(page: 1, pageSize: 20),
      ).thenAnswer((_) async => Result.value(testVideos));

      // act
      final result = await fetchVideosUseCase();

      // assert
      expect(result.asValue?.value, testVideos);
    });

    test('should propagate network exceptions from repository', () async {
      // arrange
      when(
        () => mockVideoRepository.fetchVideos(page: 1, pageSize: 20),
      ).thenAnswer((_) async => Result.error(NetworkException()));

      // act
      final result = await fetchVideosUseCase();

      // assert
      expect(result.isError, true);
      expect(result.asError?.error, isA<NetworkException>());
    });
  });
}
