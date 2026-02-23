import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class Failures {
  const Failures(this.errMessage);
  final String errMessage;
}

class ServerFailure extends Failures {
  ServerFailure(super.errMessage);
  factory ServerFailure.fromDioError(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('connectionTimeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('sendTimeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('receiveTimeout');
      case DioExceptionType.badCertificate:
        return ServerFailure('badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('cancel');
      case DioExceptionType.connectionError:
        return ServerFailure('connectionError');
      case DioExceptionType.unknown:
        if (dioException.error is SocketException) {
          // في حالة عدم وجود انترنت
          return ServerFailure('No intrent Conuction');
        }
        return ServerFailure('Unexpected error please try alleter');
      default:
        return ServerFailure('oops there was an error');
    }
  }
  factory ServerFailure.fromResponse(int? studesCode, dynamic response) {
    if (studesCode == 400 || studesCode == 401 || studesCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (studesCode == 404) {
      return ServerFailure('Your requset Not found,palease try agin litter');
    } else if (studesCode == 500) {
      return ServerFailure('internal server failuer, please try agin later');
    } else {
      return ServerFailure('oops there was an error');
    }
  }
}
