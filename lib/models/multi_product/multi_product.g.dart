// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'multi_product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MultiProductImpl _$$MultiProductImplFromJson(Map<String, dynamic> json) =>
    _$MultiProductImpl(
      multiProductId: json['multiProductId'] as int,
      parentProductId: json['parentProductId'] as int,
      multiProductName: json['multiProductName'] as String,
      multiProductLocalName: json['multiProductLocalName'] as String? ?? null,
      multiProductImage: json['multiProductImage'] as String? ?? null,
      info: json['info'] as String? ?? null,
    );

Map<String, dynamic> _$$MultiProductImplToJson(_$MultiProductImpl instance) =>
    <String, dynamic>{
      'multiProductId': instance.multiProductId,
      'parentProductId': instance.parentProductId,
      'multiProductName': instance.multiProductName,
      'multiProductLocalName': instance.multiProductLocalName,
      'multiProductImage': instance.multiProductImage,
      'info': instance.info,
    };
