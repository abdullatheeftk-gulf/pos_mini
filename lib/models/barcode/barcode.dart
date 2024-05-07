import 'package:freezed_annotation/freezed_annotation.dart';

part 'barcode.freezed.dart';
part 'barcode.g.dart';

@freezed
class Barcode with _$Barcode {
  const factory Barcode({
    @Default(null) int? foodItemId,
    @Default(null) int? multiFoodItemId,
    @Default(null) int? tableId,
    @JsonKey(name: 'barcode') required String? mBarcode,
  }) = _Barcode;

  factory Barcode.fromJson(Map<String, Object?> json) => _$BarcodeFromJson(json);
}

