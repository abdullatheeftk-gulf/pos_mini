import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_food_item.freezed.dart';
part 'multi_food_item.g.dart';

@freezed
class MultiFoodItem with _$MultiFoodItem {
  const factory MultiFoodItem({
    required int multiFoodItemId,
    required int parentFoodItemId,
    required String multiFoodItemName,
    @Default(null)String? multiFoodItemLocalName,
    @Default(null)String? multiFoodItemImage,
    @Default(null)String? info,
  }) = _MultiFoodItem;

  factory MultiFoodItem.fromJson(Map<String, dynamic> json) =>
      _$MultiFoodItemFromJson(json);
}