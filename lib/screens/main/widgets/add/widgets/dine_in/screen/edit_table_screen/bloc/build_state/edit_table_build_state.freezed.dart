// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_table_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditTableBuildState<T> {
  bool get showProgressBar => throw _privateConstructorUsedError;
  T? get result => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get barcodeErrorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditTableBuildStateCopyWith<T, EditTableBuildState<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTableBuildStateCopyWith<T, $Res> {
  factory $EditTableBuildStateCopyWith(EditTableBuildState<T> value,
          $Res Function(EditTableBuildState<T>) then) =
      _$EditTableBuildStateCopyWithImpl<T, $Res, EditTableBuildState<T>>;
  @useResult
  $Res call(
      {bool showProgressBar,
      T? result,
      String? errorMessage,
      String? barcodeErrorMessage});
}

/// @nodoc
class _$EditTableBuildStateCopyWithImpl<T, $Res,
        $Val extends EditTableBuildState<T>>
    implements $EditTableBuildStateCopyWith<T, $Res> {
  _$EditTableBuildStateCopyWithImpl(this._value, this._then);

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
    Object? barcodeErrorMessage = freezed,
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
      barcodeErrorMessage: freezed == barcodeErrorMessage
          ? _value.barcodeErrorMessage
          : barcodeErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTableBuildStateImplCopyWith<T, $Res>
    implements $EditTableBuildStateCopyWith<T, $Res> {
  factory _$$EditTableBuildStateImplCopyWith(_$EditTableBuildStateImpl<T> value,
          $Res Function(_$EditTableBuildStateImpl<T>) then) =
      __$$EditTableBuildStateImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {bool showProgressBar,
      T? result,
      String? errorMessage,
      String? barcodeErrorMessage});
}

/// @nodoc
class __$$EditTableBuildStateImplCopyWithImpl<T, $Res>
    extends _$EditTableBuildStateCopyWithImpl<T, $Res,
        _$EditTableBuildStateImpl<T>>
    implements _$$EditTableBuildStateImplCopyWith<T, $Res> {
  __$$EditTableBuildStateImplCopyWithImpl(_$EditTableBuildStateImpl<T> _value,
      $Res Function(_$EditTableBuildStateImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? result = freezed,
    Object? errorMessage = freezed,
    Object? barcodeErrorMessage = freezed,
  }) {
    return _then(_$EditTableBuildStateImpl<T>(
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
      barcodeErrorMessage: freezed == barcodeErrorMessage
          ? _value.barcodeErrorMessage
          : barcodeErrorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$EditTableBuildStateImpl<T> implements _EditTableBuildState<T> {
  const _$EditTableBuildStateImpl(
      {this.showProgressBar = false,
      this.result = null,
      this.errorMessage = null,
      this.barcodeErrorMessage = null});

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
  @JsonKey()
  final String? barcodeErrorMessage;

  @override
  String toString() {
    return 'EditTableBuildState<$T>(showProgressBar: $showProgressBar, result: $result, errorMessage: $errorMessage, barcodeErrorMessage: $barcodeErrorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTableBuildStateImpl<T> &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.barcodeErrorMessage, barcodeErrorMessage) ||
                other.barcodeErrorMessage == barcodeErrorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      showProgressBar,
      const DeepCollectionEquality().hash(result),
      errorMessage,
      barcodeErrorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTableBuildStateImplCopyWith<T, _$EditTableBuildStateImpl<T>>
      get copyWith => __$$EditTableBuildStateImplCopyWithImpl<T,
          _$EditTableBuildStateImpl<T>>(this, _$identity);
}

abstract class _EditTableBuildState<T> implements EditTableBuildState<T> {
  const factory _EditTableBuildState(
      {final bool showProgressBar,
      final T? result,
      final String? errorMessage,
      final String? barcodeErrorMessage}) = _$EditTableBuildStateImpl<T>;

  @override
  bool get showProgressBar;
  @override
  T? get result;
  @override
  String? get errorMessage;
  @override
  String? get barcodeErrorMessage;
  @override
  @JsonKey(ignore: true)
  _$$EditTableBuildStateImplCopyWith<T, _$EditTableBuildStateImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
