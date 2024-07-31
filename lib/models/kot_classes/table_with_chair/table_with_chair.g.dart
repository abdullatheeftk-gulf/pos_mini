// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_with_chair.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableWithChairImpl _$$TableWithChairImplFromJson(Map<String, dynamic> json) =>
    _$TableWithChairImpl(
      tableId: (json['tableId'] as num).toInt(),
      tableName: json['tableName'] as String,
      noOfChairRequired: (json['noOfChairRequired'] as num).toInt(),
    );

Map<String, dynamic> _$$TableWithChairImplToJson(
        _$TableWithChairImpl instance) =>
    <String, dynamic>{
      'tableId': instance.tableId,
      'tableName': instance.tableName,
      'noOfChairRequired': instance.noOfChairRequired,
    };
