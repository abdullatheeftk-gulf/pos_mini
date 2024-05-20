import 'package:freezed_annotation/freezed_annotation.dart';

part 'table_navigate_to_table_kot.freezed.dart';


@freezed
class TableNavigateToTableKot with _$TableNavigateToTableKot {

  const factory TableNavigateToTableKot({
    required int tableId,
    required String tableName,
    required int totalNoOfChairs
  }) = _TableNavigateToTableKot;

  
}