
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/settings/change_base_url/change_base_url_cubit.dart';
import 'package:pos_mini/blocs/util/show_dialog_for_bloc/show_dialog.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'change_url_consumer_states.freezed.dart';

@freezed
class ChangeUrlConsumerStates extends ChangeBaseUrlState with _$ChangeUrlConsumerStates{
  const factory ChangeUrlConsumerStates({
    @Default(null) String? navigate,
    @Default(null) ApiError? apiError,
    @Default(null) ShowDialog? showDialog,
}) = _ChangeUrlConsumerStates;
}