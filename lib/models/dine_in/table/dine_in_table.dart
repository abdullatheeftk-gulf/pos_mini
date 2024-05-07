
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dine_in_table.freezed.dart';
part 'dine_in_table.g.dart';

@freezed
class DineInTable with _$DineInTable{
  const factory DineInTable({
    @Default(0) int id,
    required String name,
    required String image,
    required int noOfSeats,
    required int noOfSeatsOccupied,
    required int areaId,
  }) = _DineInTable;

  factory DineInTable.fromJson(Map<String,dynamic> json) => _$DineInTableFromJson(json);
}