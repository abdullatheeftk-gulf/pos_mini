import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/cart_product_item/cart_product_item.dart';
import 'package:pos_mini/models/kot_classes/table_with_chair/table_with_chair.dart';

part 'kot.freezed.dart';

part 'kot.g.dart';

@freezed
class Kot with _$Kot {
  const factory Kot({
    required int kotId,
    required double total,
    @Default(0) double totalTaxAmount,
    required double net,
    @Default(null) String? customerName,
    @Default(null) String? info,
    @Default([]) List<CartProductItem> kotFoodItems,
    @Default(null) int? userId,
    @Default(null) int? adminUserId,

    // dine in details
    @Default(null) List<TableWithChair>? tablesWithChair,
    @Default(null)  int? noOfSeatsRequired,

    // date time
    required DateTime createdAt,
    required DateTime? closedAt,


  }) = _Kot;

  factory Kot.fromJson(Map<String, dynamic> json) => _$KotFromJson(json);
}
