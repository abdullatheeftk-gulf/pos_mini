import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/settings/logout_bloc/logout_cubit.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';

part 'logout_consumer_state.freezed.dart';

@freezed
class LogoutConsumerState extends LogoutState with _$LogoutConsumerState{
  const factory LogoutConsumerState({
    @Default(null) ShowDialog? showDialog,
    @Default(null) String? navigate,
}) = _LogoutConsumerState;
}