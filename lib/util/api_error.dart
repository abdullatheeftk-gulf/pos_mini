class ApiError{
  final int errorCode;
  final String errorMessage;
  final String? errorData;

  ApiError({this.errorData, required this.errorCode, required this.errorMessage});
}