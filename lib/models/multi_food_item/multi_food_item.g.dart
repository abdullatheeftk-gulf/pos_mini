// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_food_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultiFoodItemImpl _$$MultiFoodItemImplFromJson(Map<String, dynamic> json) =>
    _$MultiFoodItemImpl(
      multiFoodItemId: json['multiFoodItemId'] as int,
      parentFoodItemId: json['parentFoodItemId'] as int,
      multiFoodItemName: json['multiFoodItemName'] as String,
      multiFoodItemLocalName: json['multiFoodItemLocalName'] as String? ?? null,
      multiFoodItemImage: json['multiFoodItemImage'] as String? ?? null,
      info: json['info'] as String? ?? null,
    );

Map<String, dynamic> _$$MultiFoodItemImplToJson(_$MultiFoodItemImpl instance) =>
    <String, dynamic>{
      'multiFoodItemId': instance.multiFoodItemId,
      'parentFoodItemId': instance.parentFoodItemId,
      'multiFoodItemName': instance.multiFoodItemName,
      'multiFoodItemLocalName': instance.multiFoodItemLocalName,
      'multiFoodItemImage': instance.multiFoodItemImage,
      'info': instance.info,
    };
