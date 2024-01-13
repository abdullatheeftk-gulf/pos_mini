import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_user.freezed.dart';
part 'admin_user.g.dart';

@freezed
class AdminUser with _$AdminUser {
  const factory AdminUser({
    @Default(0) int adminId,
    required String adminName,
    required String adminPassword,
    required String licenseKey,
    @Default(true) bool isLicenceKeyVerified,
  }) = _AdminUser;

  factory AdminUser.fromJson(Map<String, dynamic> json) => _$AdminUserFromJson(json);
}

