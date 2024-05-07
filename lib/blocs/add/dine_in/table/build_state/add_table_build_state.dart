
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/blocs/add/dine_in/table/add_table_cubit.dart';

import '../../../../../models/dine_in/area/dine_in_area.dart';

part 'add_table_build_state.freezed.dart';

@freezed
class AddTableBuildState<T> extends AddTableState with _$AddTableBuildState{
  const factory AddTableBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) T? result,
    @Default(null) String? errorMessage,
    @Default(null) String? barcodeErrorMessage,
}) = _AddTableBuildState;
}