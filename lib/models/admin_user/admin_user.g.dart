// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminUserImpl _$$AdminUserImplFromJson(Map<String, dynamic> json) =>
    _$AdminUserImpl(
      adminId: json['adminId'] as int? ?? 1,
      adminName: json['adminName'] as String,
      adminPassword: json['adminPassword'] as String,
      licenseKey: json['licenseKey'] as String,
      isLicenceKeyVerified: json['isLicenceKeyVerified'] as bool? ?? true,
    );

Map<String, dynamic> _$$AdminUserImplToJson(_$AdminUserImpl instance) =>
    <String, dynamic>{
      'adminId': instance.adminId,
      'adminName': instance.adminName,
      'adminPassword': instance.adminPassword,
      'licenseKey': instance.licenseKey,
      'isLicenceKeyVerified': instance.isLicenceKeyVerified,
    };
