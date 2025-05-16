import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/data/datasources/remote/dio_error_interceptor.dart';
import 'package:videogallery/src/data/datasources/remote/pixabay_remote_data_source.dart';

// Data source providers
//
// This file contains providers for all data sources used in the application.

/// This provider creates a Dio instance and adds an interceptor for transforming
/// DioError into a custom exception.
final dioProvider = Provider<Dio>((ref) {
  final dio = Dio();
  dio.interceptors.add(DioErrorInterceptor());
  ref.onDispose(() => dio.close());
  return dio;
});

final pixabayRemoteDataSourceProvider = Provider<PixabayRemoteDataSource>((
  ref,
) {
  final dio = ref.watch(dioProvider);
  return PixabayRemoteDataSource(dio);
});
