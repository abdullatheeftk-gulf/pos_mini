import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_with_chair.freezed.dart';
part 'table_with_chair.g.dart';


@freezed
class TableWithChair with _$TableWithChair {
  const factory TableWithChair({
    required int tableId,
    required String tableName,
    required int noOfChairRequired,
  }) = _TableWithChair;

  factory TableWithChair.fromJson(Map<String, dynamic> json)=> _$TableWithChairFromJson(json);


}
