import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/food_item/food_item.dart';

part 'table_food_add_dialog.freezed.dart';

@freezed
class TableFoodAddDialog with _$TableFoodAddDialog {
  const factory TableFoodAddDialog({
    @Default(null) FoodItem? foodItem,
}) = _TableFoodAddDialog;
}
