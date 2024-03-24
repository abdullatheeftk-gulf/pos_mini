// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodItemImpl _$$FoodItemImplFromJson(Map<String, dynamic> json) =>
    _$FoodItemImpl(
      foodItemId: json['foodItemId'] as int,
      foodItemName: json['foodItemName'] as String,
      foodItemLocalName: json['foodItemLocalName'] as String? ?? null,
      foodItemPrice: (json['foodItemPrice'] as num).toDouble(),
      foodItemTaxInPercentage:
          (json['foodItemTaxInPercentage'] as num).toDouble(),
      foodItemImage: json['foodItemImage'] as String? ?? null,
      noOfTimesOrdered: (json['noOfTimesOrdered'] as num?)?.toDouble() ?? 0.0,
      info: json['info'] as String? ?? null,
      subCategoryId: json['subCategoryId'] as int? ?? null,
      multiFoodItems: (json['multiFoodItems'] as List<dynamic>?)
              ?.map((e) => MultiFoodItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      categories:
          (json['categories'] as List<dynamic>).map((e) => e as int).toList(),
      barcode: json['barcode'] as String,
    );

Map<String, dynamic> _$$FoodItemImplToJson(_$FoodItemImpl instance) =>
    <String, dynamic>{
      'foodItemId': instance.foodItemId,
      'foodItemName': instance.foodItemName,
      'foodItemLocalName': instance.foodItemLocalName,
      'foodItemPrice': instance.foodItemPrice,
      'foodItemTaxInPercentage': instance.foodItemTaxInPercentage,
      'foodItemImage': instance.foodItemImage,
      'noOfTimesOrdered': instance.noOfTimesOrdered,
      'info': instance.info,
      'subCategoryId': instance.subCategoryId,
      'multiFoodItems': instance.multiFoodItems,
      'categories': instance.categories,
      'barcode': instance.barcode,
    };
