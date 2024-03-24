import 'package:freezed_annotation/freezed_annotation.dart';

part 'dine_in_area.freezed.dart';
part 'dine_in_area.g.dart';

@freezed
class DineInArea with _$DineInArea {

  const factory DineInArea({
    @Default(0) int id,
    required String name,
  }) = _DineInArea;

  factory DineInArea.fromJson(Map<String, dynamic> json) => _$DineInAreaFromJson(json);

}