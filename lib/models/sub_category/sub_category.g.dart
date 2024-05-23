// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryImpl _$$SubCategoryImplFromJson(Map<String, dynamic> json) =>
    _$SubCategoryImpl(
      subCategoryId: (json['subCategoryId'] as num?)?.toInt() ?? 0,
      categoryId: (json['categoryId'] as num).toInt(),
      subCategoryName: json['subCategoryName'] as String,
      noOfTimesOrdered: (json['noOfTimesOrdered'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$SubCategoryImplToJson(_$SubCategoryImpl instance) =>
    <String, dynamic>{
      'subCategoryId': instance.subCategoryId,
      'categoryId': instance.categoryId,
      'subCategoryName': instance.subCategoryName,
      'noOfTimesOrdered': instance.noOfTimesOrdered,
    };
