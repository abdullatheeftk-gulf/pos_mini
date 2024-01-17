import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/sub_category/sub_category.dart';



part 'category.freezed.dart';
part 'category.g.dart';

@freezed
class Category with _$Category {
  factory Category({
    @Default(0) int categoryId,
    required String categoryName,
    @Default(0) int noOfTimesOrdered,
    @Default([]) List<SubCategory> subCategories,
  }) = _Category;

  factory Category.fromJson(Map<String,dynamic> json) => _$CategoryFromJson(json);
}