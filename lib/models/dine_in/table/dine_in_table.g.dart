// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dine_in_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DineInTableImpl _$$DineInTableImplFromJson(Map<String, dynamic> json) =>
    _$DineInTableImpl(
      id: json['id'] as int? ?? 0,
      name: json['name'] as String,
      image: json['image'] as String,
      noOfSeats: json['noOfSeats'] as int,
      noOfSeatsOccupied: json['noOfSeatsOccupied'] as int,
      areaId: json['areaId'] as int,
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
