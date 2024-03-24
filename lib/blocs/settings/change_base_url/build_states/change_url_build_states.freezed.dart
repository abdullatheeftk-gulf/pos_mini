// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_url_build_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangeUrlBuildStates {
  bool get showProgressBar => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  ApiError? get apiError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeUrlBuildStatesCopyWith<ChangeUrlBuildStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUrlBuildStatesCopyWith<$Res> {
  factory $ChangeUrlBuildStatesCopyWith(ChangeUrlBuildStates value,
          $Res Function(ChangeUrlBuildStates) then) =
      _$ChangeUrlBuildStatesCopyWithImpl<$Res, ChangeUrlBuildStates>;
  @useResult
  $Res call({bool showProgressBar, String? result, ApiError? apiError});

  $ApiErrorCopyWith<$Res>? get apiError;
}

/// @nodoc
class _$ChangeUrlBuildStatesCopyWithImpl<$Res,
        $Val extends ChangeUrlBuildStates>
    implements $ChangeUrlBuildStatesCopyWith<$Res> {
  _$ChangeUrlBuildStatesCopyWithImpl(this._value, this._then);

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
abstract class _$$ChangeUrlBuildStatesImplCopyWith<$Res>
    implements $ChangeUrlBuildStatesCopyWith<$Res> {
  factory _$$ChangeUrlBuildStatesImplCopyWith(_$ChangeUrlBuildStatesImpl value,
          $Res Function(_$ChangeUrlBuildStatesImpl) then) =
      __$$ChangeUrlBuildStatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool showProgressBar, String? result, ApiError? apiError});

  @override
  $ApiErrorCopyWith<$Res>? get apiError;
}

/// @nodoc
class __$$ChangeUrlBuildStatesImplCopyWithImpl<$Res>
    extends _$ChangeUrlBuildStatesCopyWithImpl<$Res, _$ChangeUrlBuildStatesImpl>
    implements _$$ChangeUrlBuildStatesImplCopyWith<$Res> {
  __$$ChangeUrlBuildStatesImplCopyWithImpl(_$ChangeUrlBuildStatesImpl _value,
      $Res Function(_$ChangeUrlBuildStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? apiError = freezed,
  }) {
    return _then(_$ChangeUrlBuildStatesImpl(
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

class _$ChangeUrlBuildStatesImpl implements _ChangeUrlBuildStates {
  const _$ChangeUrlBuildStatesImpl(
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
    return 'ChangeUrlBuildStates(showProgressBar: $showProgressBar, result: $result, apiError: $apiError)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUrlBuildStatesImpl &&
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
  _$$ChangeUrlBuildStatesImplCopyWith<_$ChangeUrlBuildStatesImpl>
      get copyWith =>
          __$$ChangeUrlBuildStatesImplCopyWithImpl<_$ChangeUrlBuildStatesImpl>(
              this, _$identity);
}

abstract class _ChangeUrlBuildStates implements ChangeUrlBuildStates {
  const factory _ChangeUrlBuildStates(
      {final bool showProgressBar,
      final String? result,
      final ApiError? apiError}) = _$ChangeUrlBuildStatesImpl;

  @override
  bool get showProgressBar;
  @override
  String? get result;
  @override
  ApiError? get apiError;
  @override
  @JsonKey(ignore: true)
  _$$ChangeUrlBuildStatesImplCopyWith<_$ChangeUrlBuildStatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
