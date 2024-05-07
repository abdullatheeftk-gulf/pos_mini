
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_dialog.freezed.dart';

@freezed
class ShowDialog<T> with _$ShowDialog{
  const factory ShowDialog({
    @Default(null) T? data,
    required String message
}) = _ShowDialog;
}