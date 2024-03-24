// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_url_consumer_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChangeUrlConsumerStates {
  String? get navigate => throw _privateConstructorUsedError;
  ApiError? get apiError => throw _privateConstructorUsedError;
  ShowDialog? get showDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChangeUrlConsumerStatesCopyWith<ChangeUrlConsumerStates> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeUrlConsumerStatesCopyWith<$Res> {
  factory $ChangeUrlConsumerStatesCopyWith(ChangeUrlConsumerStates value,
          $Res Function(ChangeUrlConsumerStates) then) =
      _$ChangeUrlConsumerStatesCopyWithImpl<$Res, ChangeUrlConsumerStates>;
  @useResult
  $Res call({String? navigate, ApiError? apiError, ShowDialog? showDialog});

  $ApiErrorCopyWith<$Res>? get apiError;
  $ShowDialogCopyWith<$Res>? get showDialog;
}

/// @nodoc
class _$ChangeUrlConsumerStatesCopyWithImpl<$Res,
        $Val extends ChangeUrlConsumerStates>
    implements $ChangeUrlConsumerStatesCopyWith<$Res> {
  _$ChangeUrlConsumerStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigate = freezed,
    Object? apiError = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_value.copyWith(
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      apiError: freezed == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError?,
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog?,
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

  @override
  @pragma('vm:prefer-inline')
  $ShowDialogCopyWith<$Res>? get showDialog {
    if (_value.showDialog == null) {
      return null;
    }

    return $ShowDialogCopyWith<$Res>(_value.showDialog!, (value) {
      return _then(_value.copyWith(showDialog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChangeUrlConsumerStatesImplCopyWith<$Res>
    implements $ChangeUrlConsumerStatesCopyWith<$Res> {
  factory _$$ChangeUrlConsumerStatesImplCopyWith(
          _$ChangeUrlConsumerStatesImpl value,
          $Res Function(_$ChangeUrlConsumerStatesImpl) then) =
      __$$ChangeUrlConsumerStatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? navigate, ApiError? apiError, ShowDialog? showDialog});

  @override
  $ApiErrorCopyWith<$Res>? get apiError;
  @override
  $ShowDialogCopyWith<$Res>? get showDialog;
}

/// @nodoc
class __$$ChangeUrlConsumerStatesImplCopyWithImpl<$Res>
    extends _$ChangeUrlConsumerStatesCopyWithImpl<$Res,
        _$ChangeUrlConsumerStatesImpl>
    implements _$$ChangeUrlConsumerStatesImplCopyWith<$Res> {
  __$$ChangeUrlConsumerStatesImplCopyWithImpl(
      _$ChangeUrlConsumerStatesImpl _value,
      $Res Function(_$ChangeUrlConsumerStatesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigate = freezed,
    Object? apiError = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_$ChangeUrlConsumerStatesImpl(
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      apiError: freezed == apiError
          ? _value.apiError
          : apiError // ignore: cast_nullable_to_non_nullable
              as ApiError?,
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as ShowDialog?,
    ));
  }
}

/// @nodoc

class _$ChangeUrlConsumerStatesImpl implements _ChangeUrlConsumerStates {
  const _$ChangeUrlConsumerStatesImpl(
      {this.navigate = null, this.apiError = null, this.showDialog = null});

  @override
  @JsonKey()
  final String? navigate;
  @override
  @JsonKey()
  final ApiError? apiError;
  @override
  @JsonKey()
  final ShowDialog? showDialog;

  @override
  String toString() {
    return 'ChangeUrlConsumerStates(navigate: $navigate, apiError: $apiError, showDialog: $showDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeUrlConsumerStatesImpl &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate) &&
            (identical(other.apiError, apiError) ||
                other.apiError == apiError) &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navigate, apiError, showDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeUrlConsumerStatesImplCopyWith<_$ChangeUrlConsumerStatesImpl>
      get copyWith => __$$ChangeUrlConsumerStatesImplCopyWithImpl<
          _$ChangeUrlConsumerStatesImpl>(this, _$identity);
}

abstract class _ChangeUrlConsumerStates implements ChangeUrlConsumerStates {
  const factory _ChangeUrlConsumerStates(
      {final String? navigate,
      final ApiError? apiError,
      final ShowDialog? showDialog}) = _$ChangeUrlConsumerStatesImpl;

  @override
  String? get navigate;
  @override
  ApiError? get apiError;
  @override
  ShowDialog? get showDialog;
  @override
  @JsonKey(ignore: true)
  _$$ChangeUrlConsumerStatesImplCopyWith<_$ChangeUrlConsumerStatesImpl>
      get copyWith => throw _privateConstructorUsedError;
}
