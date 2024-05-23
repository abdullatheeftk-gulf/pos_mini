// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_listener_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableListenerState {
  TableNavigateToTableKot? get navigate => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableListenerStateCopyWith<TableListenerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableListenerStateCopyWith<$Res> {
  factory $TableListenerStateCopyWith(
          TableListenerState value, $Res Function(TableListenerState) then) =
      _$TableListenerStateCopyWithImpl<$Res, TableListenerState>;
  @useResult
  $Res call({TableNavigateToTableKot? navigate, String? errorMessage});

  $TableNavigateToTableKotCopyWith<$Res>? get navigate;
}

/// @nodoc
class _$TableListenerStateCopyWithImpl<$Res, $Val extends TableListenerState>
    implements $TableListenerStateCopyWith<$Res> {
  _$TableListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigate = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as TableNavigateToTableKot?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableNavigateToTableKotCopyWith<$Res>? get navigate {
    if (_value.navigate == null) {
      return null;
    }

    return $TableNavigateToTableKotCopyWith<$Res>(_value.navigate!, (value) {
      return _then(_value.copyWith(navigate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableListenerStateImplCopyWith<$Res>
    implements $TableListenerStateCopyWith<$Res> {
  factory _$$TableListenerStateImplCopyWith(_$TableListenerStateImpl value,
          $Res Function(_$TableListenerStateImpl) then) =
      __$$TableListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TableNavigateToTableKot? navigate, String? errorMessage});

  @override
  $TableNavigateToTableKotCopyWith<$Res>? get navigate;
}

/// @nodoc
class __$$TableListenerStateImplCopyWithImpl<$Res>
    extends _$TableListenerStateCopyWithImpl<$Res, _$TableListenerStateImpl>
    implements _$$TableListenerStateImplCopyWith<$Res> {
  __$$TableListenerStateImplCopyWithImpl(_$TableListenerStateImpl _value,
      $Res Function(_$TableListenerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigate = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TableListenerStateImpl(
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as TableNavigateToTableKot?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TableListenerStateImpl implements _TableListenerState {
  const _$TableListenerStateImpl(
      {this.navigate = null, this.errorMessage = null});

  @override
  @JsonKey()
  final TableNavigateToTableKot? navigate;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'TableListenerState(navigate: $navigate, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableListenerStateImpl &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigate, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableListenerStateImplCopyWith<_$TableListenerStateImpl> get copyWith =>
      __$$TableListenerStateImplCopyWithImpl<_$TableListenerStateImpl>(
          this, _$identity);
}

abstract class _TableListenerState implements TableListenerState {
  const factory _TableListenerState(
      {final TableNavigateToTableKot? navigate,
      final String? errorMessage}) = _$TableListenerStateImpl;

  @override
  TableNavigateToTableKot? get navigate;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TableListenerStateImplCopyWith<_$TableListenerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
