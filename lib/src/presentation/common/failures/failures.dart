import 'package:flutter/widgets.dart';
import 'package:videogallery/src/domain/common/exceptions.dart';
import 'package:videogallery/src/presentation/common/l10n/l10n.dart';

sealed class Failure {}

class ServerFailure extends Failure {}

class NetworkFailure extends Failure {}

class UnexpectedFailure extends Failure {}

extension FailureExtension on Failure {
  String toLocalizedMessage(BuildContext context) {
    switch (this) {
      case ServerFailure():
        return context.l10n.serverError;
      case NetworkFailure():
        return context.l10n.networkError;
      case UnexpectedFailure():
        return context.l10n.unexpectedError;
    }
  }
}

extension ExceptionExtension on Object {
  Failure toFailure() {
    switch (this) {
      case ServerException():
        return ServerFailure();
      case NetworkException():
        return NetworkFailure();
      default:
        return UnexpectedFailure();
    }
  }
}
