// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_password_to_reset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminPasswordToResetImpl _$$AdminPasswordToResetImplFromJson(
        Map<String, dynamic> json) =>
    _$AdminPasswordToResetImpl(
      oldAdminUser:
          AdminUser.fromJson(json['oldAdminUser'] as Map<String, dynamic>),
      newAdminUser:
          AdminUser.fromJson(json['newAdminUser'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AdminPasswordToResetImplToJson(
        _$AdminPasswordToResetImpl instance) =>
    <String, dynamic>{
      'oldAdminUser': instance.oldAdminUser,
      'newAdminUser': instance.newAdminUser,
    };
