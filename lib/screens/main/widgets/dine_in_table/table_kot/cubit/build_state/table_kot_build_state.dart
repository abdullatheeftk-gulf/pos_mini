import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/cubit/table_kot_cubit.dart';

part 'table_kot_build_state.freezed.dart';


@freezed
class TableKotBuildState<T> extends TableKotState with _$TableKotBuildState {

  const factory TableKotBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) T? result,
    @Default(0) int noOfChairUsed,
    @Default(null) String? errorMessage

  }) = _TableKotBuildState;

  
}