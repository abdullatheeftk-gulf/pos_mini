import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/food_item/food_item.dart';

part 'cart_product_item.freezed.dart';
part 'cart_product_item.g.dart';
@freezed
class CartProductItem with _$CartProductItem {
   factory CartProductItem({
    @JsonKey(name: "noOfItemsOrdered") required double qty,
    @Default(null) String? note,
    required String cartProductName,
    @Default(null) String? cartProductLocalName,
    required FoodItem? product,
  }) = _CartProductItem;

  factory CartProductItem.fromJson(Map<String,dynamic> json) =>_$CartProductItemFromJson(json);
}
