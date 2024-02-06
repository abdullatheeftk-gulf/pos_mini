/*
class ApiError{
  final int errorCode;
  final String errorMessage;
  final String? errorData;

  ApiError({this.errorData, required this.errorCode, required this.errorMessage});
}*/

import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_error.freezed.dart';

@freezed
class ApiError with _$ApiError{
  const factory ApiError({
    required int errorCode,
    required String errorMessage,
    String? errorData
}) = _ApiError;

}
