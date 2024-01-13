// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminResponse _$AdminResponseFromJson(Map<String, dynamic> json) {
  return _AdminResponse.fromJson(json);
}

/// @nodoc
mixin _$AdminResponse {
  AdminUser get adminUser => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminResponseCopyWith<AdminResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminResponseCopyWith<$Res> {
  factory $AdminResponseCopyWith(
          AdminResponse value, $Res Function(AdminResponse) then) =
      _$AdminResponseCopyWithImpl<$Res, AdminResponse>;
  @useResult
  $Res call({AdminUser adminUser, String token});

  $AdminUserCopyWith<$Res> get adminUser;
}

/// @nodoc
class _$AdminResponseCopyWithImpl<$Res, $Val extends AdminResponse>
    implements $AdminResponseCopyWith<$Res> {
  _$AdminResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminUser = null,
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      adminUser: null == adminUser
          ? _value.adminUser
          : adminUser // ignore: cast_nullable_to_non_nullable
              as AdminUser,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminUserCopyWith<$Res> get adminUser {
    return $AdminUserCopyWith<$Res>(_value.adminUser, (value) {
      return _then(_value.copyWith(adminUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminResponseImplCopyWith<$Res>
    implements $AdminResponseCopyWith<$Res> {
  factory _$$AdminResponseImplCopyWith(
          _$AdminResponseImpl value, $Res Function(_$AdminResponseImpl) then) =
      __$$AdminResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminUser adminUser, String token});

  @override
  $AdminUserCopyWith<$Res> get adminUser;
}

/// @nodoc
class __$$AdminResponseImplCopyWithImpl<$Res>
    extends _$AdminResponseCopyWithImpl<$Res, _$AdminResponseImpl>
    implements _$$AdminResponseImplCopyWith<$Res> {
  __$$AdminResponseImplCopyWithImpl(
      _$AdminResponseImpl _value, $Res Function(_$AdminResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adminUser = null,
    Object? token = null,
  }) {
    return _then(_$AdminResponseImpl(
      adminUser: null == adminUser
          ? _value.adminUser
          : adminUser // ignore: cast_nullable_to_non_nullable
              as AdminUser,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminResponseImpl implements _AdminResponse {
  const _$AdminResponseImpl({required this.adminUser, required this.token});

  factory _$AdminResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminResponseImplFromJson(json);

  @override
  final AdminUser adminUser;
  @override
  final String token;

  @override
  String toString() {
    return 'AdminResponse(adminUser: $adminUser, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminResponseImpl &&
            (identical(other.adminUser, adminUser) ||
                other.adminUser == adminUser) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, adminUser, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminResponseImplCopyWith<_$AdminResponseImpl> get copyWith =>
      __$$AdminResponseImplCopyWithImpl<_$AdminResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminResponseImplToJson(
      this,
    );
  }
}

abstract class _AdminResponse implements AdminResponse {
  const factory _AdminResponse(
      {required final AdminUser adminUser,
      required final String token}) = _$AdminResponseImpl;

  factory _AdminResponse.fromJson(Map<String, dynamic> json) =
      _$AdminResponseImpl.fromJson;

  @override
  AdminUser get adminUser;
  @override
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$AdminResponseImplCopyWith<_$AdminResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
