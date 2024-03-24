import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


import 'package:pos_mini/models/admin_user/admin_user.dart';
import 'package:pos_mini/repository/api_repository/api_repository.dart';
import 'package:pos_mini/repository/shared_data_repository/shared_data_repository.dart';
import 'package:pos_mini/util/api_error/api_error.dart';


import '../util/show_dialog_for_bloc/show_dialog.dart';

part 'reset_admin_password_state.dart';

part 'reset_admin_password_cubit.freezed.dart';

class ResetAdminPasswordCubit extends Cubit<ResetAdminPasswordState> {
  final ApiRepository apiRepository;
  final SharedDataRepository sharedDataRepository;

  ResetAdminPasswordCubit({required this.sharedDataRepository,required this.apiRepository})
      : super(const ResetAdminPasswordState.initialState());

  void resetAdminPassword(AdminUser adminUser) async {
    emit(const ResetAdminPasswordState.buildState(showProgressBar: true));

    final result = await apiRepository.resetAdminPassword(adminUser);

    if (result is ApiError) {
      emit(ResetAdminPasswordState.buildState(apiError: result));
      return;
    }



    emit(ResetAdminPasswordState.buildState(result: result,showProgressBar: false,showDialog: const ShowDialog(message: "Admin Password rested")));


    sharedDataRepository.setAdminPassword(adminUser.adminPassword);
  }


  void navigateBack() {
    emit(const ResetAdminPasswordState.buildState(navigate: "Pop uup"));
  }

  bool checkOldPasswordEnteredIsCorrect(String newPassword){
    final adminPasswordFromData = sharedDataRepository.getAdminPassword();

    return adminPasswordFromData==newPassword;
  }


}
