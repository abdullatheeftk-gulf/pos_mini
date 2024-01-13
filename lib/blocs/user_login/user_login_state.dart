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

final class UserLoginNavigateToMainScreenState extends UserLoginUiActionState{}
