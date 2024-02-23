// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$userImpl _$$userImplFromJson(Map<String, dynamic> json) => _$userImpl(
      userId: json['userId'] as int? ?? 0,
      userPassword: json['userPassword'] as String,
      userName: json['userName'] as String? ?? null,
    );

Map<String, dynamic> _$$userImplToJson(_$userImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'userPassword': instance.userPassword,
      'userName': instance.userName,
    };
