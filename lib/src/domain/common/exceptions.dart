class ServerException implements Exception {
  final int statusCode;

  ServerException(this.statusCode);
}

class NetworkException implements Exception {}

class UnexpectedException implements Exception {}
