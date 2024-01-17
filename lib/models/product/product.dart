import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/multi_product/multi_product.dart';

part 'product.freezed.dart';
part 'product.g.dart';


@freezed
class Product with _$Product {
  const factory Product({
    required int productId,
    required String productName,
    @Default(null)String? productLocalName,
    required double productPrice,
    required double productTaxInPercentage,
    @Default(null)String? productImage,
    @Default(0.0) double noOfTimesOrdered,
    @Default(null)String? info,
    @Default(null)int? subCategoryId,
    @Default([]) List<MultiProduct> multiProducts,
    required List<int> categories,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}