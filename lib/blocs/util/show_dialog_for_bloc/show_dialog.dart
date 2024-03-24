
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_dialog.freezed.dart';

@freezed
class ShowDialog with _$ShowDialog{
  const factory ShowDialog({
    required String message
}) = _ShowDialog;
}