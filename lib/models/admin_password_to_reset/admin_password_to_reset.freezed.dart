// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_password_to_reset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdminPasswordToReset _$AdminPasswordToResetFromJson(Map<String, dynamic> json) {
  return _AdminPasswordToReset.fromJson(json);
}

/// @nodoc
mixin _$AdminPasswordToReset {
  AdminUser get oldAdminUser => throw _privateConstructorUsedError;
  AdminUser get newAdminUser => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminPasswordToResetCopyWith<AdminPasswordToReset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminPasswordToResetCopyWith<$Res> {
  factory $AdminPasswordToResetCopyWith(AdminPasswordToReset value,
          $Res Function(AdminPasswordToReset) then) =
      _$AdminPasswordToResetCopyWithImpl<$Res, AdminPasswordToReset>;
  @useResult
  $Res call({AdminUser oldAdminUser, AdminUser newAdminUser});

  $AdminUserCopyWith<$Res> get oldAdminUser;
  $AdminUserCopyWith<$Res> get newAdminUser;
}

/// @nodoc
class _$AdminPasswordToResetCopyWithImpl<$Res,
        $Val extends AdminPasswordToReset>
    implements $AdminPasswordToResetCopyWith<$Res> {
  _$AdminPasswordToResetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldAdminUser = null,
    Object? newAdminUser = null,
  }) {
    return _then(_value.copyWith(
      oldAdminUser: null == oldAdminUser
          ? _value.oldAdminUser
          : oldAdminUser // ignore: cast_nullable_to_non_nullable
              as AdminUser,
      newAdminUser: null == newAdminUser
          ? _value.newAdminUser
          : newAdminUser // ignore: cast_nullable_to_non_nullable
              as AdminUser,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminUserCopyWith<$Res> get oldAdminUser {
    return $AdminUserCopyWith<$Res>(_value.oldAdminUser, (value) {
      return _then(_value.copyWith(oldAdminUser: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AdminUserCopyWith<$Res> get newAdminUser {
    return $AdminUserCopyWith<$Res>(_value.newAdminUser, (value) {
      return _then(_value.copyWith(newAdminUser: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AdminPasswordToResetImplCopyWith<$Res>
    implements $AdminPasswordToResetCopyWith<$Res> {
  factory _$$AdminPasswordToResetImplCopyWith(_$AdminPasswordToResetImpl value,
          $Res Function(_$AdminPasswordToResetImpl) then) =
      __$$AdminPasswordToResetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AdminUser oldAdminUser, AdminUser newAdminUser});

  @override
  $AdminUserCopyWith<$Res> get oldAdminUser;
  @override
  $AdminUserCopyWith<$Res> get newAdminUser;
}

/// @nodoc
class __$$AdminPasswordToResetImplCopyWithImpl<$Res>
    extends _$AdminPasswordToResetCopyWithImpl<$Res, _$AdminPasswordToResetImpl>
    implements _$$AdminPasswordToResetImplCopyWith<$Res> {
  __$$AdminPasswordToResetImplCopyWithImpl(_$AdminPasswordToResetImpl _value,
      $Res Function(_$AdminPasswordToResetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldAdminUser = null,
    Object? newAdminUser = null,
  }) {
    return _then(_$AdminPasswordToResetImpl(
      oldAdminUser: null == oldAdminUser
          ? _value.oldAdminUser
          : oldAdminUser // ignore: cast_nullable_to_non_nullable
              as AdminUser,
      newAdminUser: null == newAdminUser
          ? _value.newAdminUser
          : newAdminUser // ignore: cast_nullable_to_non_nullable
              as AdminUser,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdminPasswordToResetImpl implements _AdminPasswordToReset {
  const _$AdminPasswordToResetImpl(
      {required this.oldAdminUser, required this.newAdminUser});

  factory _$AdminPasswordToResetImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdminPasswordToResetImplFromJson(json);

  @override
  final AdminUser oldAdminUser;
  @override
  final AdminUser newAdminUser;

  @override
  String toString() {
    return 'AdminPasswordToReset(oldAdminUser: $oldAdminUser, newAdminUser: $newAdminUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdminPasswordToResetImpl &&
            (identical(other.oldAdminUser, oldAdminUser) ||
                other.oldAdminUser == oldAdminUser) &&
            (identical(other.newAdminUser, newAdminUser) ||
                other.newAdminUser == newAdminUser));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, oldAdminUser, newAdminUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdminPasswordToResetImplCopyWith<_$AdminPasswordToResetImpl>
      get copyWith =>
          __$$AdminPasswordToResetImplCopyWithImpl<_$AdminPasswordToResetImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdminPasswordToResetImplToJson(
      this,
    );
  }
}

abstract class _AdminPasswordToReset implements AdminPasswordToReset {
  const factory _AdminPasswordToReset(
      {required final AdminUser oldAdminUser,
      required final AdminUser newAdminUser}) = _$AdminPasswordToResetImpl;

  factory _AdminPasswordToReset.fromJson(Map<String, dynamic> json) =
      _$AdminPasswordToResetImpl.fromJson;

  @override
  AdminUser get oldAdminUser;
  @override
  AdminUser get newAdminUser;
  @override
  @JsonKey(ignore: true)
  _$$AdminPasswordToResetImplCopyWith<_$AdminPasswordToResetImpl>
      get copyWith => throw _privateConstructorUsedError;
}
