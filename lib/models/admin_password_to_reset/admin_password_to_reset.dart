import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pos_mini/models/admin_user/admin_user.dart';

part 'admin_password_to_reset.g.dart';
part 'admin_password_to_reset.freezed.dart';

@freezed
class AdminPasswordToReset with _$AdminPasswordToReset{
  const factory AdminPasswordToReset({
    required AdminUser oldAdminUser,
    required AdminUser newAdminUser,
}) = _AdminPasswordToReset;

  factory AdminPasswordToReset.fromJson(Map<String,dynamic> json) => _$AdminPasswordToResetFromJson(json);

}