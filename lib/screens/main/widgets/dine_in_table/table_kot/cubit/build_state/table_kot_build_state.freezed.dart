// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_kot_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableKotBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  int get noOfChairUsed => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableKotBuildStateCopyWith<T, TableKotBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableKotBuildStateCopyWith<T, $Res> {
  factory $TableKotBuildStateCopyWith(TableKotBuildState<T> value,
          $Res Function(TableKotBuildState<T>) then) =
      _$TableKotBuildStateCopyWithImpl<T, $Res, TableKotBuildState<T>>;
  @useResult
  $Res call(
      {bool showProgressBar,
      T? result,
      int noOfChairUsed,
      String? errorMessage});
}

/// @nodoc
class _$TableKotBuildStateCopyWithImpl<T, $Res,
        $Val extends TableKotBuildState<T>>
    implements $TableKotBuildStateCopyWith<T, $Res> {
  _$TableKotBuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? noOfChairUsed = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      noOfChairUsed: null == noOfChairUsed
          ? _value.noOfChairUsed
          : noOfChairUsed // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableKotBuildStateImplCopyWith<T, $Res>
    implements $TableKotBuildStateCopyWith<T, $Res> {
  factory _$$TableKotBuildStateImplCopyWith(_$TableKotBuildStateImpl<T> value,
          $Res Function(_$TableKotBuildStateImpl<T>) then) =
      __$$TableKotBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool showProgressBar,
      T? result,
      int noOfChairUsed,
      String? errorMessage});
}

/// @nodoc
class __$$TableKotBuildStateImplCopyWithImpl<T, $Res>
    extends _$TableKotBuildStateCopyWithImpl<T, $Res,
        _$TableKotBuildStateImpl<T>>
    implements _$$TableKotBuildStateImplCopyWith<T, $Res> {
  __$$TableKotBuildStateImplCopyWithImpl(_$TableKotBuildStateImpl<T> _value,
      $Res Function(_$TableKotBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? noOfChairUsed = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TableKotBuildStateImpl<T>(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      noOfChairUsed: null == noOfChairUsed
          ? _value.noOfChairUsed
          : noOfChairUsed // ignore: cast_nullable_to_non_nullable
              as int,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TableKotBuildStateImpl<T> implements _TableKotBuildState<T> {
  const _$TableKotBuildStateImpl(
      {this.showProgressBar = false,
      this.result = null,
      this.noOfChairUsed = 0,
      this.errorMessage = null});

  @override
  @JsonKey()
  final bool showProgressBar;
  @override
  @JsonKey()
  final T? result;
  @override
  @JsonKey()
  final int noOfChairUsed;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'TableKotBuildState<$T>(showProgressBar: $showProgressBar, result: $result, noOfChairUsed: $noOfChairUsed, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableKotBuildStateImpl<T> &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.noOfChairUsed, noOfChairUsed) ||
                other.noOfChairUsed == noOfChairUsed) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showProgressBar,
      const DeepCollectionEquality().hash(result), noOfChairUsed, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableKotBuildStateImplCopyWith<T, _$TableKotBuildStateImpl<T>>
      get copyWith => __$$TableKotBuildStateImplCopyWithImpl<T,
          _$TableKotBuildStateImpl<T>>(this, _$identity);
}

abstract class _TableKotBuildState<T> implements TableKotBuildState<T> {
  const factory _TableKotBuildState(
      {final bool showProgressBar,
      final T? result,
      final int noOfChairUsed,
      final String? errorMessage}) = _$TableKotBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  int get noOfChairUsed;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TableKotBuildStateImplCopyWith<T, _$TableKotBuildStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
