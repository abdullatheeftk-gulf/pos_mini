// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShowDialog {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowDialogCopyWith<ShowDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowDialogCopyWith<$Res> {
  factory $ShowDialogCopyWith(
          ShowDialog value, $Res Function(ShowDialog) then) =
      _$ShowDialogCopyWithImpl<$Res, ShowDialog>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ShowDialogCopyWithImpl<$Res, $Val extends ShowDialog>
    implements $ShowDialogCopyWith<$Res> {
  _$ShowDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShowDialogImplCopyWith<$Res>
    implements $ShowDialogCopyWith<$Res> {
  factory _$$ShowDialogImplCopyWith(
          _$ShowDialogImpl value, $Res Function(_$ShowDialogImpl) then) =
      __$$ShowDialogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ShowDialogImplCopyWithImpl<$Res>
    extends _$ShowDialogCopyWithImpl<$Res, _$ShowDialogImpl>
    implements _$$ShowDialogImplCopyWith<$Res> {
  __$$ShowDialogImplCopyWithImpl(
      _$ShowDialogImpl _value, $Res Function(_$ShowDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ShowDialogImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ShowDialogImpl implements _ShowDialog {
  const _$ShowDialogImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ShowDialog(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDialogImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDialogImplCopyWith<_$ShowDialogImpl> get copyWith =>
      __$$ShowDialogImplCopyWithImpl<_$ShowDialogImpl>(this, _$identity);
}

abstract class _ShowDialog implements ShowDialog {
  const factory _ShowDialog({required final String message}) = _$ShowDialogImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ShowDialogImplCopyWith<_$ShowDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
