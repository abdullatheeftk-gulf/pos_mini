import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/food_item/food_item.dart';
import 'package:pos_mini/screens/main/screens/dine_in_table/table_food_item/cubit/table_food_selection_cubit.dart';

import '../../../../../../../models/category/category.dart';

part 'table_food_selection_build_state.freezed.dart';


@freezed
class TableFoodSelectionBuildState extends TableFoodSelectionState with _$TableFoodSelectionBuildState {

  const factory TableFoodSelectionBuildState({
    @Default(false) bool showProgressBar,
    @Default(null) List<FoodItem>? foodItems,
    @Default(null) List<Category>? categories,
    @Default(null) String? errorMessage,
  }) = _TableFoodSelectionBuildState;

}