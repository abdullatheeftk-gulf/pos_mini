import 'package:freezed_annotation/freezed_annotation.dart';

part 'sub_category.freezed.dart';

part 'sub_category.g.dart';

@freezed
class SubCategory with _$SubCategory {
  factory SubCategory({
    @Default(0) int subCategoryId,
    required int categoryId,
    required String subCategoryName,
    @Default(0) int noOfTimesOrdered,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}
