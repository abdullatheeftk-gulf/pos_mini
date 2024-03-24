// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_product_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartProductItemImpl _$$CartProductItemImplFromJson(
        Map<String, dynamic> json) =>
    _$CartProductItemImpl(
      qty: (json['noOfItemsOrdered'] as num).toDouble(),
      note: json['note'] as String? ?? null,
      cartProductName: json['cartProductName'] as String,
      cartProductLocalName: json['cartProductLocalName'] as String? ?? null,
      product: json['product'] == null
          ? null
          : FoodItem.fromJson(json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CartProductItemImplToJson(
        _$CartProductItemImpl instance) =>
    <String, dynamic>{
      'noOfItemsOrdered': instance.qty,
      'note': instance.note,
      'cartProductName': instance.cartProductName,
      'cartProductLocalName': instance.cartProductLocalName,
      'product': instance.product,
    };
