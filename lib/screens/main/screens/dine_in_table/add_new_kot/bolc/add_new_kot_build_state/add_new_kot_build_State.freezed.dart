// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_new_kot_build_State.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddNewKotBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNewKotBuildStateCopyWith<T, AddNewKotBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNewKotBuildStateCopyWith<T, $Res> {
  factory $AddNewKotBuildStateCopyWith(AddNewKotBuildState<T> value,
          $Res Function(AddNewKotBuildState<T>) then) =
      _$AddNewKotBuildStateCopyWithImpl<T, $Res, AddNewKotBuildState<T>>;
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class _$AddNewKotBuildStateCopyWithImpl<T, $Res,
        $Val extends AddNewKotBuildState<T>>
    implements $AddNewKotBuildStateCopyWith<T, $Res> {
  _$AddNewKotBuildStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AddNewKotBuildStateImplCopyWith<T, $Res>
    implements $AddNewKotBuildStateCopyWith<T, $Res> {
  factory _$$AddNewKotBuildStateImplCopyWith(_$AddNewKotBuildStateImpl<T> value,
          $Res Function(_$AddNewKotBuildStateImpl<T>) then) =
      __$$AddNewKotBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, T? result, String? errorMessage});
}

/// @nodoc
class __$$AddNewKotBuildStateImplCopyWithImpl<T, $Res>
    extends _$AddNewKotBuildStateCopyWithImpl<T, $Res,
        _$AddNewKotBuildStateImpl<T>>
    implements _$$AddNewKotBuildStateImplCopyWith<T, $Res> {
  __$$AddNewKotBuildStateImplCopyWithImpl(_$AddNewKotBuildStateImpl<T> _value,
      $Res Function(_$AddNewKotBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$AddNewKotBuildStateImpl<T>(
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

class _$AddNewKotBuildStateImpl<T> implements _AddNewKotBuildState<T> {
  const _$AddNewKotBuildStateImpl(
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
    return 'AddNewKotBuildState<$T>(showProgressBar: $showProgressBar, result: $result, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewKotBuildStateImpl<T> &&
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
  _$$AddNewKotBuildStateImplCopyWith<T, _$AddNewKotBuildStateImpl<T>>
      get copyWith => __$$AddNewKotBuildStateImplCopyWithImpl<T,
          _$AddNewKotBuildStateImpl<T>>(this, _$identity);
}

abstract class _AddNewKotBuildState<T> implements AddNewKotBuildState<T> {
  const factory _AddNewKotBuildState(
      {final bool showProgressBar,
      final T? result,
      final String? errorMessage}) = _$AddNewKotBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$AddNewKotBuildStateImplCopyWith<T, _$AddNewKotBuildStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
