import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'admin_login_event.dart';

part 'admin_login_state.dart';

class AdminLoginBloc extends Bloc<AdminLoginEvent, AdminLoginState> {
  final ApiRepository apiRepository;

  AdminLoginBloc({required this.apiRepository})
      : super(AdminLoginInitialState()) {

    on<AdminLoginStartedEvent>(_adminLoginStartedEvent);

    on<AdminUpdatePasswordEvent>(_adminUpdatePasswordEvent);
  }

  FutureOr<void> _adminLoginStartedEvent(
      AdminLoginStartedEvent event, Emitter<AdminLoginState> emit) async {
    emit(AdminLoginApiFetchingStartedState());

    final adminPassword = event.adminPassword;

    final adminUser = AdminUser(
        adminName: event.adminName,
        adminPassword: adminPassword,
        licenseKey: "key");

    final result = await apiRepository.loginAdmin(adminUser);
    if (result is ApiError) {
      emit(AdminLoginApiFetchingFailedState(apiError: result));
      emit(AdminLoginActionFailedState(apiError: result));
      return;
    }

    // Todo

    if (adminPassword == "741") {
      emit(AdminShowChangePasswordAlertDialog());
    } else {
      emit(AdminLoginNavigateToMainScreenState());
    }

    emit(AdminLoginActionSuccessState());
  }

  FutureOr<void> _adminUpdatePasswordEvent(AdminUpdatePasswordEvent event, Emitter<AdminLoginState> emit) async{
    emit(AdminLoginApiFetchingStartedState());

    final oldAdminUser = event.oldAdminUser;
    final newAdminUser = event.newAdminUser;

    final response = await apiRepository.updateAdminPassword(oldAdminUser, newAdminUser);

    if(response is ApiError){
        emit(AdminPasswordResetFailedState(apiError: response));
        emit(AdminLoginApiFetchingFailedState(apiError: response));
        emit(AdminLoginActionFailedState(apiError: response));
        return;
    }

    emit(AdminLoginNavigateToMainScreenState());


  }
}
