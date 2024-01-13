part of 'admin_login_bloc.dart';

@immutable
abstract class AdminLoginState {}

class AdminLoginInitialState extends AdminLoginState {}

final class AdminLoginUiBuildState extends AdminLoginState{}
final class AdminLoginUiActionState extends AdminLoginState{}

final class AdminLoginApiFetchingStartedState extends AdminLoginUiBuildState{}

final class AdminLoginApiFetchingFailedState extends AdminLoginUiActionState{
  final ApiError apiError;

  AdminLoginApiFetchingFailedState({required this.apiError});
}

final class AdminLoginActionSuccessState extends AdminLoginUiBuildState{}

final class AdminLoginActionFailedState extends AdminLoginUiBuildState{
  final ApiError apiError;

  AdminLoginActionFailedState({required this.apiError});

}
