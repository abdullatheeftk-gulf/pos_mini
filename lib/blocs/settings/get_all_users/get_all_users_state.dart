part of 'get_all_users_cubit.dart';

@immutable
abstract class GetAllUsersState {}

class GetAllUsersInitialState extends GetAllUsersState {}

class GetAllUsersUIActionState extends GetAllUsersState{}
class GetAllUsersUIBuildState extends GetAllUsersState{}

class GetAllUsersShowProgressBarState extends GetAllUsersUIBuildState{}

class GetAllUsersApiFetchingFailedState extends GetAllUsersUIActionState{
  final ApiError apiError;

  GetAllUsersApiFetchingFailedState({required this.apiError});
}

class GetAllUsersGetUsersSuccessState extends GetAllUsersUIBuildState{
  final List<User> users;

  GetAllUsersGetUsersSuccessState({required this.users});
}

class GetAllUsersGetUsersFailedState extends GetAllUsersUIBuildState{
  final ApiError apiError;

  GetAllUsersGetUsersFailedState({required this.apiError});
}

