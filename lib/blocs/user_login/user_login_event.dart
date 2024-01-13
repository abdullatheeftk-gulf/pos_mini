part of 'user_login_bloc.dart';

@immutable
abstract class UserLoginEvent {}

final class UserLoginStartEvent extends UserLoginEvent {
  final String password;

  UserLoginStartEvent({required this.password});
}

/*final class AdminUserLoginEvent extends UserLoginEvent {
  final String userName;
  final String password;

  AdminUserLoginEvent({required this.userName, required this.password});
}*/
