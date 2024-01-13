import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/models/user_response/user_response.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error.dart';



part 'user_login_event.dart';
part 'user_login_state.dart';

class UserLoginBloc extends Bloc<UserLoginEvent, UserLoginState> {
  final ApiRepository apiRepository;
  UserLoginBloc({required this.apiRepository}) : super(UserLoginInitialState()) {
    on<UserLoginStartEvent>(_userLoginEvent);
   // on<AdminUserLoginEvent>(_adminUserLoginEvent);
  }

  FutureOr<void> _userLoginEvent(UserLoginStartEvent event, Emitter<UserLoginState> emit) async{
    final userPassword = event.password;
    emit(UserLoginApiFetchingStartedState());
    final user = User( userPassword: userPassword);
    final result = await apiRepository.loginUser(user);
    if(result is ApiError){
      emit(UserLoginApiFetchingFailedState(apiError: result));
      emit(UserLoginEventFailedState(apiError: result));
      return;
    }

    final userResponse = result as UserResponse;
    final token = userResponse.token;



    emit(UserLoginEventSuccessState());

    emit(UserLoginNavigateToMainScreenState());

  }



  /*FutureOr<void> _adminUserLoginEvent(AdminUserLoginEvent event, Emitter<UserLoginState> emit) async{

    final adminName = event.userName;
    final adminPassword = event.password;
    final adminUser = AdminUser(adminName: adminName, adminPassword: adminPassword, licenseKey: "key");
    emit(LoginApiFetchingStartedState());
    final result = await apiRepository.loginAdmin(adminUser);
    if(result is ApiError){
      emit(LoginApiFetchingFailedState(apiError: result));
      emit(AdminUserLoginFailedState(apiError: result));
      return;
    }

    emit(AdminUserLoginSuccessState());

  }*/
}
