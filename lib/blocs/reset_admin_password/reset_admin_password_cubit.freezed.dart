// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reset_admin_password_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResetAdminPasswordState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool showProgressBar, T? result,
            ApiError? apiError, String? navigate, ShowDialog? showDialog)
        buildState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool showProgressBar, T? result, ApiError? apiError,
            String? navigate, ShowDialog? showDialog)?
        buildState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool showProgressBar, T? result, ApiError? apiError,
            String? navigate, ShowDialog? showDialog)?
        buildState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initialState,
    required TResult Function(_buildState<T> value) buildState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initialState,
    TResult? Function(_buildState<T> value)? buildState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initialState,
    TResult Function(_buildState<T> value)? buildState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetAdminPasswordStateCopyWith<T, $Res> {
  factory $ResetAdminPasswordStateCopyWith(ResetAdminPasswordState<T> value,
          $Res Function(ResetAdminPasswordState<T>) then) =
      _$ResetAdminPasswordStateCopyWithImpl<T, $Res,
          ResetAdminPasswordState<T>>;
}

/// @nodoc
class _$ResetAdminPasswordStateCopyWithImpl<T, $Res,
        $Val extends ResetAdminPasswordState<T>>
    implements $ResetAdminPasswordStateCopyWith<T, $Res> {
  _$ResetAdminPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialStateImplCopyWith<T, $Res> {
  factory _$$InitialStateImplCopyWith(_$InitialStateImpl<T> value,
          $Res Function(_$InitialStateImpl<T>) then) =
      __$$InitialStateImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InitialStateImplCopyWithImpl<T, $Res>
    extends _$ResetAdminPasswordStateCopyWithImpl<T, $Res,
        _$InitialStateImpl<T>> implements _$$InitialStateImplCopyWith<T, $Res> {
  __$$InitialStateImplCopyWithImpl(
      _$InitialStateImpl<T> _value, $Res Function(_$InitialStateImpl<T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialStateImpl<T> implements _InitialState<T> {
  const _$InitialStateImpl();

  @override
  String toString() {
    return 'ResetAdminPasswordState<$T>.initialState()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialStateImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool showProgressBar, T? result,
            ApiError? apiError, String? navigate, ShowDialog? showDialog)
        buildState,
  }) {
    return initialState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool showProgressBar, T? result, ApiError? apiError,
            String? navigate, ShowDialog? showDialog)?
        buildState,
  }) {
    return initialState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool showProgressBar, T? result, ApiError? apiError,
            String? navigate, ShowDialog? showDialog)?
        buildState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initialState,
    required TResult Function(_buildState<T> value) buildState,
  }) {
    return initialState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initialState,
    TResult? Function(_buildState<T> value)? buildState,
  }) {
    return initialState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initialState,
    TResult Function(_buildState<T> value)? buildState,
    required TResult orElse(),
  }) {
    if (initialState != null) {
      return initialState(this);
    }
    return orElse();
  }
}

abstract class _InitialState<T> implements ResetAdminPasswordState<T> {
  const factory _InitialState() = _$InitialStateImpl<T>;
}

/// @nodoc
abstract class _$$buildStateImplCopyWith<T, $Res> {
  factory _$$buildStateImplCopyWith(
          _$buildStateImpl<T> value, $Res Function(_$buildStateImpl<T>) then) =
      __$$buildStateImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call(
      {bool showProgressBar,
      T? result,
      ApiError? apiError,
      String? navigate,
      ShowDialog? showDialog});

  $ApiErrorCopyWith<$Res>? get apiError;
  $ShowDialogCopyWith<$Res>? get showDialog;
}

/// @nodoc
class __$$buildStateImplCopyWithImpl<T, $Res>
    extends _$ResetAdminPasswordStateCopyWithImpl<T, $Res, _$buildStateImpl<T>>
    implements _$$buildStateImplCopyWith<T, $Res> {
  __$$buildStateImplCopyWithImpl(
      _$buildStateImpl<T> _value, $Res Function(_$buildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? apiError = freezed,
    Object? navigate = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_$buildStateImpl<T>(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as T?,
      apiError: freezed == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ApiErrorCopyWith<$Res>? get apiError {
    if (_value.apiError == null) {
      return null;
    }

    return $ApiErrorCopyWith<$Res>(_value.apiError!, (value) {
      return _then(_value.copyWith(apiError: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowDialogCopyWith<$Res>? get showDialog {
    if (_value.showDialog == null) {
      return null;
    }

    return $ShowDialogCopyWith<$Res>(_value.showDialog!, (value) {
      return _then(_value.copyWith(showDialog: value));
    });
  }
}

/// @nodoc

class _$buildStateImpl<T> implements _buildState<T> {
  const _$buildStateImpl(
      {this.showProgressBar = false,
      this.result = null,
      this.apiError = null,
      this.navigate = null,
      this.showDialog = null});

  @override
  @JsonKey()
  final bool showProgressBar;
  @override
  @JsonKey()
  final T? result;
  @override
  @JsonKey()
  final ApiError? apiError;
  @override
  @JsonKey()
  final String? navigate;
  @override
  @JsonKey()
  final ShowDialog? showDialog;

  @override
  String toString() {
    return 'ResetAdminPasswordState<$T>.buildState(showProgressBar: $showProgressBar, result: $result, apiError: $apiError, navigate: $navigate, showDialog: $showDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$buildStateImpl<T> &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError) &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate) &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      showProgressBar,
      const DeepCollectionEquality().hash(result),
      apiError,
      navigate,
      showDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$buildStateImplCopyWith<T, _$buildStateImpl<T>> get copyWith =>
      __$$buildStateImplCopyWithImpl<T, _$buildStateImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialState,
    required TResult Function(bool showProgressBar, T? result,
            ApiError? apiError, String? navigate, ShowDialog? showDialog)
        buildState,
  }) {
    return buildState(showProgressBar, result, apiError, navigate, showDialog);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialState,
    TResult? Function(bool showProgressBar, T? result, ApiError? apiError,
            String? navigate, ShowDialog? showDialog)?
        buildState,
  }) {
    return buildState?.call(
        showProgressBar, result, apiError, navigate, showDialog);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialState,
    TResult Function(bool showProgressBar, T? result, ApiError? apiError,
            String? navigate, ShowDialog? showDialog)?
        buildState,
    required TResult orElse(),
  }) {
    if (buildState != null) {
      return buildState(
          showProgressBar, result, apiError, navigate, showDialog);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialState<T> value) initialState,
    required TResult Function(_buildState<T> value) buildState,
  }) {
    return buildState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialState<T> value)? initialState,
    TResult? Function(_buildState<T> value)? buildState,
  }) {
    return buildState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialState<T> value)? initialState,
    TResult Function(_buildState<T> value)? buildState,
    required TResult orElse(),
  }) {
    if (buildState != null) {
      return buildState(this);
    }
    return orElse();
  }
}

abstract class _buildState<T> implements ResetAdminPasswordState<T> {
  const factory _buildState(
      {final bool showProgressBar,
      final T? result,
      final ApiError? apiError,
      final String? navigate,
      final ShowDialog? showDialog}) = _$buildStateImpl<T>;

  bool get showProgressBar;
  T? get result;
  ApiError? get apiError;
  String? get navigate;
  ShowDialog? get showDialog;
  @JsonKey(ignore: true)
  _$$buildStateImplCopyWith<T, _$buildStateImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
