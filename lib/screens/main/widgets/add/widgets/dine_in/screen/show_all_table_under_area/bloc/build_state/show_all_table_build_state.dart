
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/widgets/add/widgets/dine_in/screen/show_all_table_under_area/bloc/show_all_table_under_an_area_cubit.dart';

part 'show_all_table_build_state.freezed.dart';

@freezed
class ShowAllTableBuildState<T> extends ShowAllTableUnderAnAreaState with _$ShowAllTableBuildState{
  const factory ShowAllTableBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) T? result,
    @Default(null) String? errorMessage,
}) = _ShowAllTableBuildState;
}