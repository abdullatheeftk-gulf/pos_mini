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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AreaBuildState {
  bool get showProgressBar => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  ApiError? get apiError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AreaBuildStateCopyWith<AreaBuildState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaBuildStateCopyWith<$Res> {
  factory $AreaBuildStateCopyWith(
          AreaBuildState value, $Res Function(AreaBuildState) then) =
      _$AreaBuildStateCopyWithImpl<$Res, AreaBuildState>;
  @useResult
  $Res call({bool showProgressBar, String? result, ApiError? apiError});

  $ApiErrorCopyWith<$Res>? get apiError;
}

/// @nodoc
class _$AreaBuildStateCopyWithImpl<$Res, $Val extends AreaBuildState>
    implements $AreaBuildStateCopyWith<$Res> {
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
    Object? apiError = freezed,
  }) {
    return _then(_value.copyWith(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      apiError: freezed == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiErrorCopyWith<$Res>? get apiError {
    if (_value.apiError == null) {
      return null;
    }

    return $ApiErrorCopyWith<$Res>(_value.apiError!, (value) {
      return _then(_value.copyWith(apiError: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AreaBuildStateImplCopyWith<$Res>
    implements $AreaBuildStateCopyWith<$Res> {
  factory _$$AreaBuildStateImplCopyWith(_$AreaBuildStateImpl value,
          $Res Function(_$AreaBuildStateImpl) then) =
      __$$AreaBuildStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, String? result, ApiError? apiError});

  @override
  $ApiErrorCopyWith<$Res>? get apiError;
}

/// @nodoc
class __$$AreaBuildStateImplCopyWithImpl<$Res>
    extends _$AreaBuildStateCopyWithImpl<$Res, _$AreaBuildStateImpl>
    implements _$$AreaBuildStateImplCopyWith<$Res> {
  __$$AreaBuildStateImplCopyWithImpl(
      _$AreaBuildStateImpl _value, $Res Function(_$AreaBuildStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? apiError = freezed,
  }) {
    return _then(_$AreaBuildStateImpl(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      apiError: freezed == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError?,
    ));
  }
}

/// @nodoc

class _$AreaBuildStateImpl implements _AreaBuildState {
  const _$AreaBuildStateImpl(
      {this.showProgressBar = false, this.result = null, this.apiError = null});

  @override
  @JsonKey()
  final bool showProgressBar;
  @override
  @JsonKey()
  final String? result;
  @override
  @JsonKey()
  final ApiError? apiError;

  @override
  String toString() {
    return 'AreaBuildState(showProgressBar: $showProgressBar, result: $result, apiError: $apiError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaBuildStateImpl &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, showProgressBar, result, apiError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaBuildStateImplCopyWith<_$AreaBuildStateImpl> get copyWith =>
      __$$AreaBuildStateImplCopyWithImpl<_$AreaBuildStateImpl>(
          this, _$identity);
}

abstract class _AreaBuildState implements AreaBuildState {
  const factory _AreaBuildState(
      {final bool showProgressBar,
      final String? result,
      final ApiError? apiError}) = _$AreaBuildStateImpl;

  @override
  bool get showProgressBar;
  @override
  String? get result;
  @override
  ApiError? get apiError;
  @override
  @JsonKey(ignore: true)
  _$$AreaBuildStateImplCopyWith<_$AreaBuildStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
