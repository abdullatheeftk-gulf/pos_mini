// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KotImpl _$$KotImplFromJson(Map<String, dynamic> json) => _$KotImpl(
      kotId: (json['kotId'] as num).toInt(),
      total: (json['total'] as num).toDouble(),
      totalTaxAmount: (json['totalTaxAmount'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$KotImplToJson(_$KotImpl instance) => <String, dynamic>{
      'kotId': instance.kotId,
      'total': instance.total,
      'totalTaxAmount': instance.totalTaxAmount,
    };
