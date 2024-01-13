// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdminResponseImpl _$$AdminResponseImplFromJson(Map<String, dynamic> json) =>
    _$AdminResponseImpl(
      adminUser: AdminUser.fromJson(json['adminUser'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

Map<String, dynamic> _$$AdminResponseImplToJson(_$AdminResponseImpl instance) =>
    <String, dynamic>{
      'adminUser': instance.adminUser,
      'token': instance.token,
    };
