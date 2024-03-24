

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/dine_in/area_cubit.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'area_consumer_state.freezed.dart';

@freezed
class AreaConsumerState extends AreaState with _$AreaConsumerState{
  const factory AreaConsumerState({
    @Default(null) String? navigate,
    @Default(null) ApiError? apiError,
    @Default(null) ShowDialog? showDialog,
}) = _AreaConsumerState;
}