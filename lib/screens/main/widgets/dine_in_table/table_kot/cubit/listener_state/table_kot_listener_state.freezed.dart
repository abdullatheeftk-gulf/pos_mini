// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_kot_listener_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableKotListenerState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get navigate => throw _privateConstructorUsedError;
  String? get showAddDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableKotListenerStateCopyWith<TableKotListenerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableKotListenerStateCopyWith<$Res> {
  factory $TableKotListenerStateCopyWith(TableKotListenerState value,
          $Res Function(TableKotListenerState) then) =
      _$TableKotListenerStateCopyWithImpl<$Res, TableKotListenerState>;
  @useResult
  $Res call({String? errorMessage, String? navigate, String? showAddDialog});
}

/// @nodoc
class _$TableKotListenerStateCopyWithImpl<$Res,
        $Val extends TableKotListenerState>
    implements $TableKotListenerStateCopyWith<$Res> {
  _$TableKotListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? navigate = freezed,
    Object? showAddDialog = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      showAddDialog: freezed == showAddDialog
          ? _value.showAddDialog
          : showAddDialog // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableKotListenerStateImplCopyWith<$Res>
    implements $TableKotListenerStateCopyWith<$Res> {
  factory _$$TableKotListenerStateImplCopyWith(
          _$TableKotListenerStateImpl value,
          $Res Function(_$TableKotListenerStateImpl) then) =
      __$$TableKotListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? errorMessage, String? navigate, String? showAddDialog});
}

/// @nodoc
class __$$TableKotListenerStateImplCopyWithImpl<$Res>
    extends _$TableKotListenerStateCopyWithImpl<$Res,
        _$TableKotListenerStateImpl>
    implements _$$TableKotListenerStateImplCopyWith<$Res> {
  __$$TableKotListenerStateImplCopyWithImpl(_$TableKotListenerStateImpl _value,
      $Res Function(_$TableKotListenerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? navigate = freezed,
    Object? showAddDialog = freezed,
  }) {
    return _then(_$TableKotListenerStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      showAddDialog: freezed == showAddDialog
          ? _value.showAddDialog
          : showAddDialog // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TableKotListenerStateImpl implements _TableKotListenerState {
  const _$TableKotListenerStateImpl(
      {this.errorMessage = null,
      this.navigate = null,
      this.showAddDialog = null});

  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final String? navigate;
  @override
  @JsonKey()
  final String? showAddDialog;

  @override
  String toString() {
    return 'TableKotListenerState(errorMessage: $errorMessage, navigate: $navigate, showAddDialog: $showAddDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableKotListenerStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate) &&
            (identical(other.showAddDialog, showAddDialog) ||
                other.showAddDialog == showAddDialog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, errorMessage, navigate, showAddDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableKotListenerStateImplCopyWith<_$TableKotListenerStateImpl>
      get copyWith => __$$TableKotListenerStateImplCopyWithImpl<
          _$TableKotListenerStateImpl>(this, _$identity);
}

abstract class _TableKotListenerState implements TableKotListenerState {
  const factory _TableKotListenerState(
      {final String? errorMessage,
      final String? navigate,
      final String? showAddDialog}) = _$TableKotListenerStateImpl;

  @override
  String? get errorMessage;
  @override
  String? get navigate;
  @override
  String? get showAddDialog;
  @override
  @JsonKey(ignore: true)
  _$$TableKotListenerStateImplCopyWith<_$TableKotListenerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
