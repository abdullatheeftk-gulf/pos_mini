// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$KotImpl _$$KotImplFromJson(Map<String, dynamic> json) => _$KotImpl(
      kotId: (json['kotId'] as num).toInt(),
      total: (json['total'] as num).toDouble(),
      totalTaxAmount: (json['totalTaxAmount'] as num?)?.toDouble() ?? 0,
      net: (json['net'] as num).toDouble(),
      customerName: json['customerName'] as String? ?? null,
      info: json['info'] as String? ?? null,
      kotFoodItems: (json['kotFoodItems'] as List<dynamic>?)
              ?.map((e) => CartProductItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      userId: (json['userId'] as num?)?.toInt() ?? null,
      adminUserId: (json['adminUserId'] as num?)?.toInt() ?? null,
      tablesWithChair: (json['tablesWithChair'] as List<dynamic>?)
              ?.map((e) => TableWithChair.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
      noOfSeatsRequired: (json['noOfSeatsRequired'] as num?)?.toInt() ?? null,
      createdAt: DateTime.parse(json['createdAt'] as String),
      closedAt: json['closedAt'] == null
          ? null
          : DateTime.parse(json['closedAt'] as String),
    );

Map<String, dynamic> _$$KotImplToJson(_$KotImpl instance) => <String, dynamic>{
      'kotId': instance.kotId,
      'total': instance.total,
      'totalTaxAmount': instance.totalTaxAmount,
      'net': instance.net,
      'customerName': instance.customerName,
      'info': instance.info,
      'kotFoodItems': instance.kotFoodItems,
      'userId': instance.userId,
      'adminUserId': instance.adminUserId,
      'tablesWithChair': instance.tablesWithChair,
      'noOfSeatsRequired': instance.noOfSeatsRequired,
      'createdAt': instance.createdAt.toIso8601String(),
      'closedAt': instance.closedAt?.toIso8601String(),
    };
