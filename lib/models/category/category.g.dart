// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      categoryId: json['categoryId'] as int? ?? 0,
      categoryName: json['categoryName'] as String,
      noOfTimesOrdered: json['noOfTimesOrdered'] as int? ?? 0,
      subCategories: (json['subCategories'] as List<dynamic>?)
              ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'noOfTimesOrdered': instance.noOfTimesOrdered,
      'subCategories': instance.subCategories,
    };
