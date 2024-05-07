// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_consumer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogoutConsumerState {
  ShowDialog<dynamic>? get showDialog => throw _privateConstructorUsedError;
  String? get navigate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LogoutConsumerStateCopyWith<LogoutConsumerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutConsumerStateCopyWith<$Res> {
  factory $LogoutConsumerStateCopyWith(
          LogoutConsumerState value, $Res Function(LogoutConsumerState) then) =
      _$LogoutConsumerStateCopyWithImpl<$Res, LogoutConsumerState>;
  @useResult
  $Res call({ShowDialog<dynamic>? showDialog, String? navigate});

  $ShowDialogCopyWith<dynamic, $Res>? get showDialog;
}

/// @nodoc
class _$LogoutConsumerStateCopyWithImpl<$Res, $Val extends LogoutConsumerState>
    implements $LogoutConsumerStateCopyWith<$Res> {
  _$LogoutConsumerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDialog = freezed,
    Object? navigate = freezed,
  }) {
    return _then(_value.copyWith(
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog<dynamic>?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowDialogCopyWith<dynamic, $Res>? get showDialog {
    if (_value.showDialog == null) {
      return null;
    }

    return $ShowDialogCopyWith<dynamic, $Res>(_value.showDialog!, (value) {
      return _then(_value.copyWith(showDialog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LogoutConsumerStateImplCopyWith<$Res>
    implements $LogoutConsumerStateCopyWith<$Res> {
  factory _$$LogoutConsumerStateImplCopyWith(_$LogoutConsumerStateImpl value,
          $Res Function(_$LogoutConsumerStateImpl) then) =
      __$$LogoutConsumerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShowDialog<dynamic>? showDialog, String? navigate});

  @override
  $ShowDialogCopyWith<dynamic, $Res>? get showDialog;
}

/// @nodoc
class __$$LogoutConsumerStateImplCopyWithImpl<$Res>
    extends _$LogoutConsumerStateCopyWithImpl<$Res, _$LogoutConsumerStateImpl>
    implements _$$LogoutConsumerStateImplCopyWith<$Res> {
  __$$LogoutConsumerStateImplCopyWithImpl(_$LogoutConsumerStateImpl _value,
      $Res Function(_$LogoutConsumerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showDialog = freezed,
    Object? navigate = freezed,
  }) {
    return _then(_$LogoutConsumerStateImpl(
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog<dynamic>?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$LogoutConsumerStateImpl implements _LogoutConsumerState {
  const _$LogoutConsumerStateImpl(
      {this.showDialog = null, this.navigate = null});

  @override
  @JsonKey()
  final ShowDialog<dynamic>? showDialog;
  @override
  @JsonKey()
  final String? navigate;

  @override
  String toString() {
    return 'LogoutConsumerState(showDialog: $showDialog, navigate: $navigate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutConsumerStateImpl &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog) &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showDialog, navigate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutConsumerStateImplCopyWith<_$LogoutConsumerStateImpl> get copyWith =>
      __$$LogoutConsumerStateImplCopyWithImpl<_$LogoutConsumerStateImpl>(
          this, _$identity);
}

abstract class _LogoutConsumerState implements LogoutConsumerState {
  const factory _LogoutConsumerState(
      {final ShowDialog<dynamic>? showDialog,
      final String? navigate}) = _$LogoutConsumerStateImpl;

  @override
  ShowDialog<dynamic>? get showDialog;
  @override
  String? get navigate;
  @override
  @JsonKey(ignore: true)
  _$$LogoutConsumerStateImplCopyWith<_$LogoutConsumerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
