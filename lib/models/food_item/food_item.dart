import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/multi_food_item/multi_food_item.dart';


part 'food_item.freezed.dart';
part 'food_item.g.dart';


@freezed
class FoodItem with _$FoodItem {
  const factory FoodItem({
    required int foodItemId,
    required String foodItemName,
    @Default(null)String? foodItemLocalName,
    required double foodItemPrice,
    required double foodItemTaxInPercentage,
    @Default(null)String? foodItemImage,
    @Default(0.0) double noOfTimesOrdered,
    @Default(null)String? info,
    @Default(null)int? subCategoryId,
    @Default([]) List<MultiFoodItem> multiFoodItems,
    required List<int> categories,
    required String barcode
  }) = _FoodItem;

  factory FoodItem.fromJson(Map<String, dynamic> json) =>
      _$FoodItemFromJson(json);
}