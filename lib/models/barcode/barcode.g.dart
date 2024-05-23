// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'barcode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BarcodeImpl _$$BarcodeImplFromJson(Map<String, dynamic> json) =>
    _$BarcodeImpl(
      foodItemId: (json['foodItemId'] as num?)?.toInt() ?? null,
      multiFoodItemId: (json['multiFoodItemId'] as num?)?.toInt() ?? null,
      tableId: (json['tableId'] as num?)?.toInt() ?? null,
      mBarcode: json['barcode'] as String?,
    );

Map<String, dynamic> _$$BarcodeImplToJson(_$BarcodeImpl instance) =>
    <String, dynamic>{
      'foodItemId': instance.foodItemId,
      'multiFoodItemId': instance.multiFoodItemId,
      'tableId': instance.tableId,
      'barcode': instance.mBarcode,
    };
