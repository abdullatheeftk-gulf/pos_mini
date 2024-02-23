part of 'update_user_cubit.dart';

@immutable
abstract class UpdateUserState {}

final class UpdateUserInitialState extends UpdateUserState {}

final class UpdateUserUiBuildState extends UpdateUserState{}

final class UpdateUserUiActionState extends UpdateUserState{}

final class UpdateUserShowProgressBarState extends UpdateUserUiBuildState{}

final class UpdateUserApiFetchingFailedState extends UpdateUserUiActionState{
  final ApiError apiError;

  UpdateUserApiFetchingFailedState({required this.apiError});
}

final class UpdateUserSuccessState extends UpdateUserUiBuildState{
  final String result;

  UpdateUserSuccessState({required this.result});
}

final class UpdateUserShowSuccessAlertDialogState extends UpdateUserUiActionState{}

final class UpdateUserPopUpBackState extends UpdateUserUiActionState{}

final class UpdateUserFailedState extends UpdateUserUiBuildState{
  final ApiError apiError;

  UpdateUserFailedState({required this.apiError});
}
