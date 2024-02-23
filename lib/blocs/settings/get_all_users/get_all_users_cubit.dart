import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
import 'package:pos_mini/util/log_functions/log_functions.dart';

part 'get_all_users_state.dart';

class GetAllUsersCubit extends Cubit<GetAllUsersState> {
  final ApiRepository apiRepository;

  GetAllUsersCubit({required this.apiRepository})
      : super(GetAllUsersInitialState());

  void getAllUsers() async {
    emit(GetAllUsersShowProgressBarState());

    final result = await apiRepository.getAllUsers();

    if (result is ApiError) {
      emit(GetAllUsersApiFetchingFailedState(apiError: result));
      emit(GetAllUsersGetUsersFailedState(apiError: result));
      return;
    }

    emit(GetAllUsersGetUsersSuccessState(users: result));
  }
}
