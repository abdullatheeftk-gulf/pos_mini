import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_kot/cubit/table_kot_cubit.dart';

part 'table_kot_listener_state.freezed.dart';


@freezed
class TableKotListenerState extends TableKotState with _$TableKotListenerState {

  const factory TableKotListenerState({
    @Default(null) String? errorMessage,
    @Default(null) String? navigate,
    @Default(null) String? showAddDialog,
  }) = _TableKotListenerState;

}