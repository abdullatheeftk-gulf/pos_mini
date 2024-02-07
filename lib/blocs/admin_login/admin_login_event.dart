part of 'admin_login_bloc.dart';

@immutable
abstract class AdminLoginEvent {}

final class AdminLoginStartedEvent extends AdminLoginEvent{
  final String adminName;
  final String adminPassword;

  AdminLoginStartedEvent({required this.adminName, required this.adminPassword});
}

final class AdminUpdatePasswordEvent extends AdminLoginEvent{
  final AdminUser oldAdminUser;
  final AdminUser newAdminUser;

  AdminUpdatePasswordEvent({required this.oldAdminUser, required this.newAdminUser});
}
