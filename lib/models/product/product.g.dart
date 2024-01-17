// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductImpl _$$ProductImplFromJson(Map<String, dynamic> json) =>
    _$ProductImpl(
      productId: json['productId'] as int,
      productName: json['productName'] as String,
      productLocalName: json['productLocalName'] as String? ?? null,
      productPrice: (json['productPrice'] as num).toDouble(),
      productTaxInPercentage:
          (json['productTaxInPercentage'] as num).toDouble(),
      productImage: json['productImage'] as String? ?? null,
      noOfTimesOrdered: (json['noOfTimesOrdered'] as num?)?.toDouble() ?? 0.0,
      info: json['info'] as String? ?? null,
      subCategoryId: json['subCategoryId'] as int? ?? null,
      multiProducts: (json['multiProducts'] as List<dynamic>?)
              ?.map((e) => MultiProduct.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categories:
          (json['categories'] as List<dynamic>).map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$ProductImplToJson(_$ProductImpl instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productLocalName': instance.productLocalName,
      'productPrice': instance.productPrice,
      'productTaxInPercentage': instance.productTaxInPercentage,
      'productImage': instance.productImage,
      'noOfTimesOrdered': instance.noOfTimesOrdered,
      'info': instance.info,
      'subCategoryId': instance.subCategoryId,
      'multiProducts': instance.multiProducts,
      'categories': instance.categories,
    };
