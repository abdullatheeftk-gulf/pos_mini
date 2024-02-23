part of 'add_user_cubit.dart';

@immutable
abstract class AddUserState {}

class AddUserInitialState extends AddUserState {}

class AddUserUiBuildState extends AddUserState{}

class AddUserUiActionState extends AddUserState{}

class AddUserShowProgressIndicatorState extends AddUserUiBuildState{}

class AddUserApiFetchingFailedState extends AddUserUiActionState{
  final ApiError apiError;

  AddUserApiFetchingFailedState({required this.apiError});
}

class AddUserSuccessState extends AddUserUiBuildState{
  final int userId;

  AddUserSuccessState({required this.userId});
}

class AddUserSuccessAlertDialog extends AddUserUiActionState{}

class AddUserFailedState extends AddUserUiBuildState{
  final ApiError apiError;

  AddUserFailedState({required this.apiError});
}

class AddUserPopNavigateBackState extends AddUserUiActionState{}


