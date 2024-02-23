import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'add_user_state.dart';

class AddUserCubit extends Cubit<AddUserState> {
  final ApiRepository apiRepository;

  AddUserCubit({required this.apiRepository}) : super(AddUserInitialState());

  void addUser(User user) async {
    emit(AddUserShowProgressIndicatorState());

    final result = await apiRepository.addAUser(user);

    if (result is ApiError) {
      emit(AddUserApiFetchingFailedState(apiError: result));
      emit(AddUserFailedState(apiError: result));
      return;
    }

    emit(AddUserSuccessState(userId: result));
    emit(AddUserSuccessAlertDialog());
  }

  void onAlertDialogButtonPressed(){
    emit(AddUserPopNavigateBackState());
  }
}
