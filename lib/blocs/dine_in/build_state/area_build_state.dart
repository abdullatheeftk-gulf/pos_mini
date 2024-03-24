
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/dine_in/area_cubit.dart';
import 'package:pos_mini/util/api_error/api_error.dart';

part 'area_build_state.freezed.dart';

@freezed
class AreaBuildState extends AreaState with _$AreaBuildState{
  const factory AreaBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) String? result,
    @Default(null) ApiError? apiError,
}) = _AreaBuildState;
}

