import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/repository/api_repository.dart';
import 'package:pos_mini/util/api_error.dart';


part 'admin_login_event.dart';
part 'admin_login_state.dart';

class AdminLoginBloc extends Bloc<AdminLoginEvent, AdminLoginState> {
  final ApiRepository apiRepository;
  AdminLoginBloc({required this.apiRepository}) : super(AdminLoginInitialState()) {
    on<AdminLoginStartedEvent>(_adminLoginStartedEvent);
  }

  FutureOr<void> _adminLoginStartedEvent(AdminLoginStartedEvent event, Emitter<AdminLoginState> emit) async{
    emit(AdminLoginApiFetchingStartedState());

    final adminUser = AdminUser(adminName: event.adminName, adminPassword: event.adminPassword, licenseKey: "key");

    final result = await apiRepository.loginAdmin(adminUser);
    if(result is ApiError){
      emit(AdminLoginApiFetchingFailedState(apiError: result));
      emit(AdminLoginActionFailedState(apiError: result));
      return;
    }

    // todo

    emit(AdminLoginActionSuccessState());

  }
}
