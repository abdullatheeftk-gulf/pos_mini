
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/add/dine_in/area/area_cubit.dart';

part 'area_build_state.freezed.dart';

@freezed
class AreaBuildState<T> extends AreaState with _$AreaBuildState{
  const factory AreaBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) T? result,
    @Default(null) String? errorMessage,
}) = _AreaBuildState;
}

