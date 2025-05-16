import 'package:async/async.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:videogallery/src/di/usecase_providers.dart';
import 'package:videogallery/src/domain/common/exceptions.dart';
import 'package:videogallery/src/domain/entities/video.dart';
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

  final additionalVideos = [
    const Video(
      id: 3,
      videoUrl: 'https://example.com/video3.mp4',
      thumbnailUrl: 'https://example.com/thumbnail3.jpg',
      user: 'User3',
      userImageUrl: 'https://example.com/user3.jpg',
    ),
    const Video(
      id: 4,
      videoUrl: 'https://example.com/video4.mp4',
      thumbnailUrl: 'https://example.com/thumbnail4.jpg',
      user: 'User4',
      userImageUrl: 'https://example.com/user4.jpg',
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
          () => mockFetchVideosUseCase.call(
            query: any(named: 'query'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          ),
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
          () => mockFetchVideosUseCase.call(
            query: any(named: 'query'),
            page: any(named: 'page'),
            pageSize: any(named: 'pageSize'),
          ),
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

    test('should add new videos to existing ones when fetching more', () async {
      // Start with videos in the state
      when(
        () => mockFetchVideosUseCase.call(
          query: any(named: 'query'),
          page: any(named: 'page'),
          pageSize: any(named: 'pageSize'),
        ),
      ).thenAnswer((_) async => Result.value(testVideos));

      // Initial fetch
      await container.read(galleryViewModelProvider.notifier).fetchVideos();
      expect(
        container.read(galleryViewModelProvider).videos,
        equals(testVideos),
      );

      // Mock for additional videos
      when(
        () => mockFetchVideosUseCase.call(
          query: any(named: 'query'),
          page: any(named: 'page'),
          pageSize: any(named: 'pageSize'),
        ),
      ).thenAnswer((_) async => Result.value(additionalVideos));

      // Fetch more
      await container.read(galleryViewModelProvider.notifier).fetchVideos();

      // Check that we have both sets of videos now
      expect(
        container.read(galleryViewModelProvider).videos.length,
        equals(testVideos.length + additionalVideos.length),
      );
    });

    test('should update data when fetching with new query', () async {
      // arrange - populate with initial data
      when(
        () => mockFetchVideosUseCase.call(
          query: any(named: 'query'),
          page: any(named: 'page'),
          pageSize: any(named: 'pageSize'),
        ),
      ).thenAnswer((_) async => Result.value(testVideos));

      // Initial fetch
      await container.read(galleryViewModelProvider.notifier).fetchVideos();

      when(
        () => mockFetchVideosUseCase.call(
          query: any(named: 'query'),
          page: any(named: 'page'),
          pageSize: any(named: 'pageSize'),
        ),
      ).thenAnswer((_) async => Result.value(additionalVideos));

      // act - fetch with new query
      await container
          .read(galleryViewModelProvider.notifier)
          .fetchVideos(query: 'new search', emptyCurrentGallery: true);

      // assert the query was updated
      expect(
        container.read(galleryViewModelProvider).searchQuery,
        equals('new search'),
      );
      // assert the data was updated
      expect(
        container.read(galleryViewModelProvider).videos,
        equals(additionalVideos),
      );
    });

    test('should update view type correctly', () {
      // Check initial state
      expect(
        container.read(galleryViewModelProvider).viewType,
        equals(ViewType.grid), // Default is grid
      );

      // Toggle to list view
      container.read(galleryViewModelProvider.notifier).toggleViewType();
      expect(
        container.read(galleryViewModelProvider).viewType,
        equals(ViewType.list),
      );

      // Toggle back to grid view
      container.read(galleryViewModelProvider.notifier).toggleViewType();
      expect(
        container.read(galleryViewModelProvider).viewType,
        equals(ViewType.grid),
      );
    });
  });
}
