// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarcodeImpl _$$BarcodeImplFromJson(Map<String, dynamic> json) =>
    _$BarcodeImpl(
      foodItemId: json['foodItemId'] as int? ?? null,
      multiFoodItemId: json['multiFoodItemId'] as int? ?? null,
      tableId: json['tableId'] as int? ?? null,
      mBarcode: json['barcode'] as String?,
    );

Map<String, dynamic> _$$BarcodeImplToJson(_$BarcodeImpl instance) =>
    <String, dynamic>{
      'foodItemId': instance.foodItemId,
      'multiFoodItemId': instance.multiFoodItemId,
      'tableId': instance.tableId,
      'barcode': instance.mBarcode,
    };
