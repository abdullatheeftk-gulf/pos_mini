import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/settings/change_base_url/change_base_url_cubit.dart';
import 'package:pos_mini/util/api_error/api_error.dart';
part 'change_url_build_states.freezed.dart';

@freezed
class ChangeUrlBuildStates extends ChangeBaseUrlState with _$ChangeUrlBuildStates{
  const factory ChangeUrlBuildStates({
    @Default(false) bool showProgressBar,
    @Default(null) String? result,
    @Default(null) ApiError? apiError,
  }) = _ChangeUrlBuildStates;

}