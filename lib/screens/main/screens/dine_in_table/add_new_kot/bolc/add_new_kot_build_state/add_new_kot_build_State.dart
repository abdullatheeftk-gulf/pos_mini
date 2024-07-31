

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/add_new_kot/bolc/add_new_kot_cubit.dart';

part 'add_new_kot_build_State.freezed.dart';

@freezed
class AddNewKotBuildState<T> extends AddNewKotState with _$AddNewKotBuildState {
  const factory AddNewKotBuildState({
    @Default(null) T? result,
    @Default(null) String? errorMessage,
}) = _AddNewKotBuildState;
}
