import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/models/user/user.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'update_user_state.dart';

class UpdateUserCubit extends Cubit<UpdateUserState> {
  final ApiRepository apiRepository;

  UpdateUserCubit({required this.apiRepository})
      : super(UpdateUserInitialState());

  void updateAUser({required String oldPassword, required User user}) async {
    emit(UpdateUserShowProgressBarState());

    final result =
        await apiRepository.updateAUser(oldPassword: oldPassword, user: user);

    if (result is ApiError) {
      emit(UpdateUserApiFetchingFailedState(apiError: result));
      emit(UpdateUserFailedState(apiError: result));
      return;
    }

    emit(UpdateUserShowSuccessAlertDialogState());
    emit(UpdateUserSuccessState(result: result));
  }

  void popUpBack() {
    emit(UpdateUserPopUpBackState());
  }
}
