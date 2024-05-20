import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/screens/main/widgets/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';

part 'table_food_selection_listener_state.freezed.dart';

@freezed
class TableFoodSelectionListenerState extends TableFoodSelectionState with _$TableFoodSelectionListenerState {

  factory TableFoodSelectionListenerState({
    @Default(null) String? errorMessage,
    @Default(null) String? navigate,
    @Default(null) String? showDialog
  }) = _TableFoodSelectionListenerState;

}