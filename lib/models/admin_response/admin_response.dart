import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';

part 'admin_response.freezed.dart';
part 'admin_response.g.dart';
@freezed
class AdminResponse with _$AdminResponse{

  const factory AdminResponse({
    required AdminUser adminUser,
    required String token
}) = _AdminResponse;

  factory AdminResponse.fromJson(Map<String,dynamic> json) => _$AdminResponseFromJson(json);

}