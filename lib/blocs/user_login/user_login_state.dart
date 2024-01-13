part of 'user_login_bloc.dart';

@immutable
abstract class UserLoginState {}

final class UserLoginInitialState extends UserLoginState {}

final class UserLoginUIBuildState extends UserLoginState {}

final class UserLoginUiActionState extends UserLoginState {}

final class UserLoginApiFetchingStartedState extends UserLoginUIBuildState {}

final class UserLoginApiFetchingFailedState extends UserLoginUiActionState {
  final ApiError apiError;

  UserLoginApiFetchingFailedState({required this.apiError});
}

final class UserLoginEventSuccessState extends UserLoginUIBuildState {}

final class UserLoginEventFailedState extends UserLoginUIBuildState {
  final ApiError apiError;

  UserLoginEventFailedState({required this.apiError});
}

/*final class AdminUserLoginSuccessState extends LoginUiBuildState {}

final class AdminUserLoginFailedState extends LoginUiBuildState {
  final ApiError apiError;

  AdminUserLoginFailedState({required this.apiError});
}*/
