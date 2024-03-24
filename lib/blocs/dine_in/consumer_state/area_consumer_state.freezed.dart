// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'area_consumer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AreaConsumerState {
  String? get navigate => throw _privateConstructorUsedError;
  ApiError? get apiError => throw _privateConstructorUsedError;
  ShowDialog? get showDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AreaConsumerStateCopyWith<AreaConsumerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaConsumerStateCopyWith<$Res> {
  factory $AreaConsumerStateCopyWith(
          AreaConsumerState value, $Res Function(AreaConsumerState) then) =
      _$AreaConsumerStateCopyWithImpl<$Res, AreaConsumerState>;
  @useResult
  $Res call({String? navigate, ApiError? apiError, ShowDialog? showDialog});

  $ApiErrorCopyWith<$Res>? get apiError;
  $ShowDialogCopyWith<$Res>? get showDialog;
}

/// @nodoc
class _$AreaConsumerStateCopyWithImpl<$Res, $Val extends AreaConsumerState>
    implements $AreaConsumerStateCopyWith<$Res> {
  _$AreaConsumerStateCopyWithImpl(this._value, this._then);

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
abstract class _$$AreaConsumerStateImplCopyWith<$Res>
    implements $AreaConsumerStateCopyWith<$Res> {
  factory _$$AreaConsumerStateImplCopyWith(_$AreaConsumerStateImpl value,
          $Res Function(_$AreaConsumerStateImpl) then) =
      __$$AreaConsumerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? navigate, ApiError? apiError, ShowDialog? showDialog});

  @override
  $ApiErrorCopyWith<$Res>? get apiError;
  @override
  $ShowDialogCopyWith<$Res>? get showDialog;
}

/// @nodoc
class __$$AreaConsumerStateImplCopyWithImpl<$Res>
    extends _$AreaConsumerStateCopyWithImpl<$Res, _$AreaConsumerStateImpl>
    implements _$$AreaConsumerStateImplCopyWith<$Res> {
  __$$AreaConsumerStateImplCopyWithImpl(_$AreaConsumerStateImpl _value,
      $Res Function(_$AreaConsumerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navigate = freezed,
    Object? apiError = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_$AreaConsumerStateImpl(
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

class _$AreaConsumerStateImpl implements _AreaConsumerState {
  const _$AreaConsumerStateImpl(
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
    return 'AreaConsumerState(navigate: $navigate, apiError: $apiError, showDialog: $showDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaConsumerStateImpl &&
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
  _$$AreaConsumerStateImplCopyWith<_$AreaConsumerStateImpl> get copyWith =>
      __$$AreaConsumerStateImplCopyWithImpl<_$AreaConsumerStateImpl>(
          this, _$identity);
}

abstract class _AreaConsumerState implements AreaConsumerState {
  const factory _AreaConsumerState(
      {final String? navigate,
      final ApiError? apiError,
      final ShowDialog? showDialog}) = _$AreaConsumerStateImpl;

  @override
  String? get navigate;
  @override
  ApiError? get apiError;
  @override
  ShowDialog? get showDialog;
  @override
  @JsonKey(ignore: true)
  _$$AreaConsumerStateImplCopyWith<_$AreaConsumerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
