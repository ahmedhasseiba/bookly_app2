import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioError dioError) {
    switch (dioError.type) {
      case DioErrorType.cancel:
        return ServerFailure("Request to API server was cancelled");
      case DioErrorType.connectionTimeout:
        return ServerFailure("Connection timeout with API server");
      case DioErrorType.unknown:
        return ServerFailure('Unexpected error');
      case DioErrorType.receiveTimeout:
        return ServerFailure("Receive timeout in connection with API server");
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioErrorType.sendTimeout:
        return ServerFailure("Send timeout in connection with API server");
      case DioErrorType.badCertificate:
        return ServerFailure('Bad SSL certificate');
      case DioErrorType.connectionError:
        return ServerFailure("Opps there was an error, Please try later!");
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure("Your request not found, Please try later!");
    } else if (statusCode == 500) {
      return ServerFailure("Internal server error, Please try later!");
    } else {
      return ServerFailure("Opps there was an error, Please try later!");
    }
  }
}
