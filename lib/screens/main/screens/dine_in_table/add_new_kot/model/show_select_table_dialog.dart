import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/dine_in/table/dine_in_table.dart';

part 'show_select_table_dialog.freezed.dart';

@freezed
class ShowSelectTableDialog with _$ShowSelectTableDialog {
  const factory ShowSelectTableDialog({
    required DineInTable dineInTable,
}) = _ShowSelectTableDialog;
}
