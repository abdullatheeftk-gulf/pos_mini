// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_select_table_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowSelectTableDialog {
  DineInTable get dineInTable => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowSelectTableDialogCopyWith<ShowSelectTableDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowSelectTableDialogCopyWith<$Res> {
  factory $ShowSelectTableDialogCopyWith(ShowSelectTableDialog value,
          $Res Function(ShowSelectTableDialog) then) =
      _$ShowSelectTableDialogCopyWithImpl<$Res, ShowSelectTableDialog>;
  @useResult
  $Res call({DineInTable dineInTable});

  $DineInTableCopyWith<$Res> get dineInTable;
}

/// @nodoc
class _$ShowSelectTableDialogCopyWithImpl<$Res,
        $Val extends ShowSelectTableDialog>
    implements $ShowSelectTableDialogCopyWith<$Res> {
  _$ShowSelectTableDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dineInTable = null,
  }) {
    return _then(_value.copyWith(
      dineInTable: null == dineInTable
          ? _value.dineInTable
          : dineInTable // ignore: cast_nullable_to_non_nullable
              as DineInTable,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DineInTableCopyWith<$Res> get dineInTable {
    return $DineInTableCopyWith<$Res>(_value.dineInTable, (value) {
      return _then(_value.copyWith(dineInTable: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShowSelectTableDialogImplCopyWith<$Res>
    implements $ShowSelectTableDialogCopyWith<$Res> {
  factory _$$ShowSelectTableDialogImplCopyWith(
          _$ShowSelectTableDialogImpl value,
          $Res Function(_$ShowSelectTableDialogImpl) then) =
      __$$ShowSelectTableDialogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DineInTable dineInTable});

  @override
  $DineInTableCopyWith<$Res> get dineInTable;
}

/// @nodoc
class __$$ShowSelectTableDialogImplCopyWithImpl<$Res>
    extends _$ShowSelectTableDialogCopyWithImpl<$Res,
        _$ShowSelectTableDialogImpl>
    implements _$$ShowSelectTableDialogImplCopyWith<$Res> {
  __$$ShowSelectTableDialogImplCopyWithImpl(_$ShowSelectTableDialogImpl _value,
      $Res Function(_$ShowSelectTableDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dineInTable = null,
  }) {
    return _then(_$ShowSelectTableDialogImpl(
      dineInTable: null == dineInTable
          ? _value.dineInTable
          : dineInTable // ignore: cast_nullable_to_non_nullable
              as DineInTable,
    ));
  }
}

/// @nodoc

class _$ShowSelectTableDialogImpl implements _ShowSelectTableDialog {
  const _$ShowSelectTableDialogImpl({required this.dineInTable});

  @override
  final DineInTable dineInTable;

  @override
  String toString() {
    return 'ShowSelectTableDialog(dineInTable: $dineInTable)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowSelectTableDialogImpl &&
            (identical(other.dineInTable, dineInTable) ||
                other.dineInTable == dineInTable));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dineInTable);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowSelectTableDialogImplCopyWith<_$ShowSelectTableDialogImpl>
      get copyWith => __$$ShowSelectTableDialogImplCopyWithImpl<
          _$ShowSelectTableDialogImpl>(this, _$identity);
}

abstract class _ShowSelectTableDialog implements ShowSelectTableDialog {
  const factory _ShowSelectTableDialog(
      {required final DineInTable dineInTable}) = _$ShowSelectTableDialogImpl;

  @override
  DineInTable get dineInTable;
  @override
  @JsonKey(ignore: true)
  _$$ShowSelectTableDialogImplCopyWith<_$ShowSelectTableDialogImpl>
      get copyWith => throw _privateConstructorUsedError;
}
