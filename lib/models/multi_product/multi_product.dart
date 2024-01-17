import 'package:freezed_annotation/freezed_annotation.dart';

part 'multi_product.freezed.dart';
part 'multi_product.g.dart';

@freezed
class MultiProduct with _$MultiProduct {
  const factory MultiProduct({
    required int multiProductId,
    required int parentProductId,
    required String multiProductName,
    @Default(null)String? multiProductLocalName,
    @Default(null)String? multiProductImage,
    @Default(null)String? info,
  }) = _MultiProduct;

  factory MultiProduct.fromJson(Map<String, dynamic> json) =>
      _$MultiProductFromJson(json);
}