

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_mini/blocs/settings/logout_bloc/logout_consumer_state/logout_consumer_state.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';

part 'logout_state.dart';

class LogoutCubit extends Cubit<LogoutState> {
  LogoutCubit() : super(LogoutInitial());

  void showLogoutDialog(){
    emit(const LogoutConsumerState(showDialog: ShowDialog(message: "Are you want to logout")));
  }

  void navigateToUserLoginScreen() {
    emit(const LogoutConsumerState(navigate: "Navigate back"));
  }
}
