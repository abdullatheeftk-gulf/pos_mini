// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dine_in_kot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DineInKotImpl _$$DineInKotImplFromJson(Map<String, dynamic> json) =>
    _$DineInKotImpl(
      kotId: (json['kotId'] as num).toInt(),
      noOfChairRequired: (json['noOfChairRequired'] as num).toInt(),
      dineTableId: (json['dineTableId'] as num).toInt(),
    );

Map<String, dynamic> _$$DineInKotImplToJson(_$DineInKotImpl instance) =>
    <String, dynamic>{
      'kotId': instance.kotId,
      'noOfChairRequired': instance.noOfChairRequired,
      'dineTableId': instance.dineTableId,
    };
