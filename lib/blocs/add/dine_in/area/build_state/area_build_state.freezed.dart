// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AreaBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AreaBuildStateCopyWith<T, AreaBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaBuildStateCopyWith<T, $Res> {
  factory $AreaBuildStateCopyWith(
          AreaBuildState<T> value, $Res Function(AreaBuildState<T>) then) =
      _$AreaBuildStateCopyWithImpl<T, $Res, AreaBuildState<T>>;
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class _$AreaBuildStateCopyWithImpl<T, $Res, $Val extends AreaBuildState<T>>
    implements $AreaBuildStateCopyWith<T, $Res> {
  _$AreaBuildStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AreaBuildStateImplCopyWith<T, $Res>
    implements $AreaBuildStateCopyWith<T, $Res> {
  factory _$$AreaBuildStateImplCopyWith(_$AreaBuildStateImpl<T> value,
          $Res Function(_$AreaBuildStateImpl<T>) then) =
      __$$AreaBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class __$$AreaBuildStateImplCopyWithImpl<T, $Res>
    extends _$AreaBuildStateCopyWithImpl<T, $Res, _$AreaBuildStateImpl<T>>
    implements _$$AreaBuildStateImplCopyWith<T, $Res> {
  __$$AreaBuildStateImplCopyWithImpl(_$AreaBuildStateImpl<T> _value,
      $Res Function(_$AreaBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AreaBuildStateImpl<T>(
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

class _$AreaBuildStateImpl<T> implements _AreaBuildState<T> {
  const _$AreaBuildStateImpl(
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
    return 'AreaBuildState<$T>(showProgressBar: $showProgressBar, result: $result, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaBuildStateImpl<T> &&
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
  _$$AreaBuildStateImplCopyWith<T, _$AreaBuildStateImpl<T>> get copyWith =>
      __$$AreaBuildStateImplCopyWithImpl<T, _$AreaBuildStateImpl<T>>(
          this, _$identity);
}

abstract class _AreaBuildState<T> implements AreaBuildState<T> {
  const factory _AreaBuildState(
      {final bool showProgressBar,
      final T? result,
      final String? errorMessage}) = _$AreaBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AreaBuildStateImplCopyWith<T, _$AreaBuildStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
