// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminUser _$AdminUserFromJson(Map<String, dynamic> json) {
  return _AdminUser.fromJson(json);
}

/// @nodoc
mixin _$AdminUser {
  int get adminId => throw _privateConstructorUsedError;
  String get adminName => throw _privateConstructorUsedError;
  String get adminPassword => throw _privateConstructorUsedError;
  String get licenseKey => throw _privateConstructorUsedError;
  bool get isLicenceKeyVerified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminUserCopyWith<AdminUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminUserCopyWith<$Res> {
  factory $AdminUserCopyWith(AdminUser value, $Res Function(AdminUser) then) =
      _$AdminUserCopyWithImpl<$Res, AdminUser>;
  @useResult
  $Res call(
      {int adminId,
      String adminName,
      String adminPassword,
      String licenseKey,
      bool isLicenceKeyVerified});
}

/// @nodoc
class _$AdminUserCopyWithImpl<$Res, $Val extends AdminUser>
    implements $AdminUserCopyWith<$Res> {
  _$AdminUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminId = null,
    Object? adminName = null,
    Object? adminPassword = null,
    Object? licenseKey = null,
    Object? isLicenceKeyVerified = null,
  }) {
    return _then(_value.copyWith(
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      adminPassword: null == adminPassword
          ? _value.adminPassword
          : adminPassword // ignore: cast_nullable_to_non_nullable
              as String,
      licenseKey: null == licenseKey
          ? _value.licenseKey
          : licenseKey // ignore: cast_nullable_to_non_nullable
              as String,
      isLicenceKeyVerified: null == isLicenceKeyVerified
          ? _value.isLicenceKeyVerified
          : isLicenceKeyVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdminUserImplCopyWith<$Res>
    implements $AdminUserCopyWith<$Res> {
  factory _$$AdminUserImplCopyWith(
          _$AdminUserImpl value, $Res Function(_$AdminUserImpl) then) =
      __$$AdminUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int adminId,
      String adminName,
      String adminPassword,
      String licenseKey,
      bool isLicenceKeyVerified});
}

/// @nodoc
class __$$AdminUserImplCopyWithImpl<$Res>
    extends _$AdminUserCopyWithImpl<$Res, _$AdminUserImpl>
    implements _$$AdminUserImplCopyWith<$Res> {
  __$$AdminUserImplCopyWithImpl(
      _$AdminUserImpl _value, $Res Function(_$AdminUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminId = null,
    Object? adminName = null,
    Object? adminPassword = null,
    Object? licenseKey = null,
    Object? isLicenceKeyVerified = null,
  }) {
    return _then(_$AdminUserImpl(
      adminId: null == adminId
          ? _value.adminId
          : adminId // ignore: cast_nullable_to_non_nullable
              as int,
      adminName: null == adminName
          ? _value.adminName
          : adminName // ignore: cast_nullable_to_non_nullable
              as String,
      adminPassword: null == adminPassword
          ? _value.adminPassword
          : adminPassword // ignore: cast_nullable_to_non_nullable
              as String,
      licenseKey: null == licenseKey
          ? _value.licenseKey
          : licenseKey // ignore: cast_nullable_to_non_nullable
              as String,
      isLicenceKeyVerified: null == isLicenceKeyVerified
          ? _value.isLicenceKeyVerified
          : isLicenceKeyVerified // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminUserImpl implements _AdminUser {
  const _$AdminUserImpl(
      {this.adminId = 0,
      required this.adminName,
      required this.adminPassword,
      required this.licenseKey,
      this.isLicenceKeyVerified = true});

  factory _$AdminUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminUserImplFromJson(json);

  @override
  @JsonKey()
  final int adminId;
  @override
  final String adminName;
  @override
  final String adminPassword;
  @override
  final String licenseKey;
  @override
  @JsonKey()
  final bool isLicenceKeyVerified;

  @override
  String toString() {
    return 'AdminUser(adminId: $adminId, adminName: $adminName, adminPassword: $adminPassword, licenseKey: $licenseKey, isLicenceKeyVerified: $isLicenceKeyVerified)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminUserImpl &&
            (identical(other.adminId, adminId) || other.adminId == adminId) &&
            (identical(other.adminName, adminName) ||
                other.adminName == adminName) &&
            (identical(other.adminPassword, adminPassword) ||
                other.adminPassword == adminPassword) &&
            (identical(other.licenseKey, licenseKey) ||
                other.licenseKey == licenseKey) &&
            (identical(other.isLicenceKeyVerified, isLicenceKeyVerified) ||
                other.isLicenceKeyVerified == isLicenceKeyVerified));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adminId, adminName,
      adminPassword, licenseKey, isLicenceKeyVerified);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminUserImplCopyWith<_$AdminUserImpl> get copyWith =>
      __$$AdminUserImplCopyWithImpl<_$AdminUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminUserImplToJson(
      this,
    );
  }
}

abstract class _AdminUser implements AdminUser {
  const factory _AdminUser(
      {final int adminId,
      required final String adminName,
      required final String adminPassword,
      required final String licenseKey,
      final bool isLicenceKeyVerified}) = _$AdminUserImpl;

  factory _AdminUser.fromJson(Map<String, dynamic> json) =
      _$AdminUserImpl.fromJson;

  @override
  int get adminId;
  @override
  String get adminName;
  @override
  String get adminPassword;
  @override
  String get licenseKey;
  @override
  bool get isLicenceKeyVerified;
  @override
  @JsonKey(ignore: true)
  _$$AdminUserImplCopyWith<_$AdminUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
