// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dine_in_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DineInTableImpl _$$DineInTableImplFromJson(Map<String, dynamic> json) =>
    _$DineInTableImpl(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String,
      image: json['image'] as String,
      noOfSeats: (json['noOfSeats'] as num).toInt(),
      noOfSeatsOccupied: (json['noOfSeatsOccupied'] as num).toInt(),
      areaId: (json['areaId'] as num).toInt(),
    );

Map<String, dynamic> _$$DineInTableImplToJson(_$DineInTableImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'noOfSeats': instance.noOfSeats,
      'noOfSeatsOccupied': instance.noOfSeatsOccupied,
      'areaId': instance.areaId,
    };
