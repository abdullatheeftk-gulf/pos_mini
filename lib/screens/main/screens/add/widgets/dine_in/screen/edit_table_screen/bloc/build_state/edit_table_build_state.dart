import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/screens/add/widgets/dine_in/screen/edit_table_screen/bloc/edit_table_cubit.dart';

part 'edit_table_build_state.freezed.dart';

@freezed
class EditTableBuildState<T> extends EditTableState with _$EditTableBuildState{
  const factory EditTableBuildState({
    @Default(false) bool showProgressBar,
    @Default(null)  T? result,
    @Default(null) String? errorMessage,
    @Default(null) String? barcodeErrorMessage
}) = _EditTableBuildState;
}