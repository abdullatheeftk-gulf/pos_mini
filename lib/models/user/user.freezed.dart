// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _user.fromJson(json);
}

/// @nodoc
mixin _$User {
  int get userId => throw _privateConstructorUsedError;
  String get userPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({int userId, String userPassword});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userPassword = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$userImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$userImplCopyWith(
          _$userImpl value, $Res Function(_$userImpl) then) =
      __$$userImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userId, String userPassword});
}

/// @nodoc
class __$$userImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$userImpl>
    implements _$$userImplCopyWith<$Res> {
  __$$userImplCopyWithImpl(_$userImpl _value, $Res Function(_$userImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? userPassword = null,
  }) {
    return _then(_$userImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      userPassword: null == userPassword
          ? _value.userPassword
          : userPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$userImpl implements _user {
  const _$userImpl({this.userId = 0, required this.userPassword});

  factory _$userImpl.fromJson(Map<String, dynamic> json) =>
      _$$userImplFromJson(json);

  @override
  @JsonKey()
  final int userId;
  @override
  final String userPassword;

  @override
  String toString() {
    return 'User(userId: $userId, userPassword: $userPassword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$userImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userPassword, userPassword) ||
                other.userPassword == userPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId, userPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$userImplCopyWith<_$userImpl> get copyWith =>
      __$$userImplCopyWithImpl<_$userImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$userImplToJson(
      this,
    );
  }
}

abstract class _user implements User {
  const factory _user({final int userId, required final String userPassword}) =
      _$userImpl;

  factory _user.fromJson(Map<String, dynamic> json) = _$userImpl.fromJson;

  @override
  int get userId;
  @override
  String get userPassword;
  @override
  @JsonKey(ignore: true)
  _$$userImplCopyWith<_$userImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
