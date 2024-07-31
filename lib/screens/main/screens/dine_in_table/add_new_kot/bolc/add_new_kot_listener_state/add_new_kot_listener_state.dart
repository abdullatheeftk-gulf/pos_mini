

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_cubit.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/model/show_select_table_dialog.dart';

part 'add_new_kot_listener_state.freezed.dart';

@freezed
class AddNewKotListenerState extends AddNewKotState with _$AddNewKotListenerState {
  const factory AddNewKotListenerState({
    @Default(null) String? errorMessage,
    @Default(null) String? navigate,
    @Default(null) ShowSelectTableDialog? showSelectTableDialog

}) = _AddNewKotListenerState;
}
