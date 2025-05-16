/// Exception thrown when the server returns an error response.
class ServerException implements Exception {
  /// HTTP status code returned by the server
  final int statusCode;

  ServerException(this.statusCode);
}

/// Exception thrown when a network error occurs (like no connectivity).
class NetworkException implements Exception {}

/// Exception thrown for unexpected errors that don't fall into other categories.
class UnexpectedException implements Exception {}
