import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table/cubit/table_screen_cubit.dart';


part 'table_build_state.freezed.dart';


@freezed
class TableBuildState<T> extends TableScreenState with _$TableBuildState {

  const factory TableBuildState({
      @Default(false) bool showProgressBar,
      @Default(null) T? result,
      @Default(null) String? errorMessage
  }) = _TableBuildState;

 
}