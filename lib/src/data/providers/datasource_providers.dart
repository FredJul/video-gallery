import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:videogallery/src/data/datasources/remote/dio_error_interceptor.dart';
import 'package:videogallery/src/data/datasources/remote/pixabay_remote_data_source.dart';

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
