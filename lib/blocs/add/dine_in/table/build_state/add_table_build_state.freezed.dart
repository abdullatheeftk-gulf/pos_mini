// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_table_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddTableBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddTableBuildStateCopyWith<T, AddTableBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddTableBuildStateCopyWith<T, $Res> {
  factory $AddTableBuildStateCopyWith(AddTableBuildState<T> value,
          $Res Function(AddTableBuildState<T>) then) =
      _$AddTableBuildStateCopyWithImpl<T, $Res, AddTableBuildState<T>>;
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class _$AddTableBuildStateCopyWithImpl<T, $Res,
        $Val extends AddTableBuildState<T>>
    implements $AddTableBuildStateCopyWith<T, $Res> {
  _$AddTableBuildStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AddTableBuildStateImplCopyWith<T, $Res>
    implements $AddTableBuildStateCopyWith<T, $Res> {
  factory _$$AddTableBuildStateImplCopyWith(_$AddTableBuildStateImpl<T> value,
          $Res Function(_$AddTableBuildStateImpl<T>) then) =
      __$$AddTableBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class __$$AddTableBuildStateImplCopyWithImpl<T, $Res>
    extends _$AddTableBuildStateCopyWithImpl<T, $Res,
        _$AddTableBuildStateImpl<T>>
    implements _$$AddTableBuildStateImplCopyWith<T, $Res> {
  __$$AddTableBuildStateImplCopyWithImpl(_$AddTableBuildStateImpl<T> _value,
      $Res Function(_$AddTableBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddTableBuildStateImpl<T>(
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

class _$AddTableBuildStateImpl<T> implements _AddTableBuildState<T> {
  const _$AddTableBuildStateImpl(
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
    return 'AddTableBuildState<$T>(showProgressBar: $showProgressBar, result: $result, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddTableBuildStateImpl<T> &&
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
  _$$AddTableBuildStateImplCopyWith<T, _$AddTableBuildStateImpl<T>>
      get copyWith => __$$AddTableBuildStateImplCopyWithImpl<T,
          _$AddTableBuildStateImpl<T>>(this, _$identity);
}

abstract class _AddTableBuildState<T> implements AddTableBuildState<T> {
  const factory _AddTableBuildState(
      {final bool showProgressBar,
      final T? result,
      final String? errorMessage}) = _$AddTableBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddTableBuildStateImplCopyWith<T, _$AddTableBuildStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
