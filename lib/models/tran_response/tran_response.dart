import 'package:freezed_annotation/freezed_annotation.dart';

part 'tran_response.freezed.dart';
part 'tran_response.g.dart';

@freezed
class TranResponse with _$TranResponse {
  const factory TranResponse({
    required String results,
  }) = _TranResponse;

  factory TranResponse.fromJson(Map<String, dynamic> json) =>
      _$TranResponseFromJson(json);
}