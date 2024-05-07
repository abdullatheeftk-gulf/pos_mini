// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_all_table_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowAllTableBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowAllTableBuildStateCopyWith<T, ShowAllTableBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAllTableBuildStateCopyWith<T, $Res> {
  factory $ShowAllTableBuildStateCopyWith(ShowAllTableBuildState<T> value,
          $Res Function(ShowAllTableBuildState<T>) then) =
      _$ShowAllTableBuildStateCopyWithImpl<T, $Res, ShowAllTableBuildState<T>>;
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class _$ShowAllTableBuildStateCopyWithImpl<T, $Res,
        $Val extends ShowAllTableBuildState<T>>
    implements $ShowAllTableBuildStateCopyWith<T, $Res> {
  _$ShowAllTableBuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowAllTableBuildStateImplCopyWith<T, $Res>
    implements $ShowAllTableBuildStateCopyWith<T, $Res> {
  factory _$$ShowAllTableBuildStateImplCopyWith(
          _$ShowAllTableBuildStateImpl<T> value,
          $Res Function(_$ShowAllTableBuildStateImpl<T>) then) =
      __$$ShowAllTableBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class __$$ShowAllTableBuildStateImplCopyWithImpl<T, $Res>
    extends _$ShowAllTableBuildStateCopyWithImpl<T, $Res,
        _$ShowAllTableBuildStateImpl<T>>
    implements _$$ShowAllTableBuildStateImplCopyWith<T, $Res> {
  __$$ShowAllTableBuildStateImplCopyWithImpl(
      _$ShowAllTableBuildStateImpl<T> _value,
      $Res Function(_$ShowAllTableBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$ShowAllTableBuildStateImpl<T>(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ShowAllTableBuildStateImpl<T> implements _ShowAllTableBuildState<T> {
  const _$ShowAllTableBuildStateImpl(
      {this.showProgressBar = false,
      this.result = null,
      this.errorMessage = null});

  @override
  @JsonKey()
  final bool showProgressBar;
  @override
  @JsonKey()
  final T? result;
  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'ShowAllTableBuildState<$T>(showProgressBar: $showProgressBar, result: $result, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAllTableBuildStateImpl<T> &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, showProgressBar,
      const DeepCollectionEquality().hash(result), errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAllTableBuildStateImplCopyWith<T, _$ShowAllTableBuildStateImpl<T>>
      get copyWith => __$$ShowAllTableBuildStateImplCopyWithImpl<T,
          _$ShowAllTableBuildStateImpl<T>>(this, _$identity);
}

abstract class _ShowAllTableBuildState<T> implements ShowAllTableBuildState<T> {
  const factory _ShowAllTableBuildState(
      {final bool showProgressBar,
      final T? result,
      final String? errorMessage}) = _$ShowAllTableBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$ShowAllTableBuildStateImplCopyWith<T, _$ShowAllTableBuildStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
