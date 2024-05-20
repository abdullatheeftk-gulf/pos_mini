
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dine_in_kot.freezed.dart';
part 'dine_in_kot.g.dart';

@freezed
class DineInKot with _$DineInKot {

  factory DineInKot({
    required int kotId,
    required int noOfChairRequired,
    required int dineTableId,
  }) = _DineInKot;

  factory DineInKot.fromJson(Map<String, dynamic> json) => _$DineInKotFromJson(json);
}