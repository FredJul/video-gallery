import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogallery/src/domain/common/exceptions.dart';
import 'package:videogallery/src/domain/entities/video.dart';
import 'package:videogallery/src/domain/providers/usecase_providers.dart';
import 'package:videogallery/src/domain/usecases/fetch_videos_use_case.dart';
import 'package:videogallery/src/presentation/common/failures/failures.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_state.dart';
import 'package:videogallery/src/presentation/gallery/viewmodels/gallery_view_model.dart';

class MockFetchVideosUseCase extends Mock implements FetchVideosUseCase {}

void main() {
  late MockFetchVideosUseCase mockFetchVideosUseCase;
  late ProviderContainer container;

  setUp(() {
    mockFetchVideosUseCase = MockFetchVideosUseCase();

    container = ProviderContainer(
      overrides: [
        fetchVideosUseCaseProvider.overrideWithValue(mockFetchVideosUseCase),
      ],
    );

    addTearDown(container.dispose);
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

  group('GalleryViewModel', () {
    test('initial state should be correct', () {
      final initialState = container.read(galleryViewModelProvider);
      expect(initialState, equals(const GalleryState()));
    });

    test(
      'should emit loading and success states when fetchVideos succeeds',
      () async {
        // arrange
        when(
          () => mockFetchVideosUseCase.call(),
        ).thenAnswer((_) async => Result.value(testVideos));

        // act
        await container.read(galleryViewModelProvider.notifier).fetchVideos();

        // assert
        expect(
          container.read(galleryViewModelProvider).status,
          equals(GalleryStatus.success),
        );
        expect(
          container.read(galleryViewModelProvider).videos,
          equals(testVideos),
        );
      },
    );

    test(
      'should emit loading and failure states when fetchVideos fails',
      () async {
        // arrange
        when(
          () => mockFetchVideosUseCase.call(),
        ).thenAnswer((_) async => Result.error(ServerException(500)));

        // act
        await container.read(galleryViewModelProvider.notifier).fetchVideos();

        // assert
        expect(
          container.read(galleryViewModelProvider).status,
          equals(GalleryStatus.failure),
        );
        expect(
          container.read(galleryViewModelProvider).error,
          isA<ServerFailure>(),
        );
      },
    );
  });
}
