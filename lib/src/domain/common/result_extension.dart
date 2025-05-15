import 'package:async/async.dart';

/// Extension on the Dart async's Result class to add map and when methods
extension ResultExtension<T> on Result<T> {
  /// Maps the value of a Result to a new value if the Result is a value result.
  /// If the Result is an error result, the error is preserved.
  ///
  /// Example:
  /// ```dart
  /// Result<int> result = Result.value(42);
  /// Result<String> stringResult = result.map((value) => value.toString());
  /// ```
  Result<R> map<R>(R Function(T value) mapper) {
    if (isValue) {
      try {
        return Result.value(mapper(asValue!.value));
      } catch (e, stackTrace) {
        return Result.error(e, stackTrace);
      }
    } else {
      final error = asError!;
      return Result.error(error.error, error.stackTrace);
    }
  }

  /// Handles both success and error cases with dedicated functions.
  ///
  /// Example:
  /// ```dart
  /// Result<int> result = Result.value(42);
  /// final output = result.when(
  ///   (value) => 'Success: $value',
  ///   (error, stackTrace) => 'Error: $error',
  /// );
  /// ```
  R when<R>({
    required R Function(T value) value,
    required R Function(Object error, StackTrace stackTrace) error,
  }) {
    if (isValue) {
      return value(asValue!.value);
    } else {
      final errorResult = asError!;
      return error(errorResult.error, errorResult.stackTrace);
    }
  }
}

/// Extension on a Result future to add map method for easier chaining
extension FutureResultExtension<T> on Future<Result<T>> {
  /// Maps the value inside a Result future if it's a value result.
  /// If the Result is an error result, the error is preserved.
  ///
  /// Example:
  /// ```dart
  /// Future<Result<int>> futureResult = Future.value(Result.value(42));
  /// Future<Result<String>> futureStringResult = futureResult.map((value) => value.toString());
  /// ```
  Future<Result<R>> map<R>(R Function(T value) mapper) async {
    final result = await this;
    return result.map(mapper);
  }
}
