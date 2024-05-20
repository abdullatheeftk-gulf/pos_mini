// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_navigate_to_table_kot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableNavigateToTableKot {
  int get tableId => throw _privateConstructorUsedError;
  String get tableName => throw _privateConstructorUsedError;
  int get totalNoOfChairs => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableNavigateToTableKotCopyWith<TableNavigateToTableKot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableNavigateToTableKotCopyWith<$Res> {
  factory $TableNavigateToTableKotCopyWith(TableNavigateToTableKot value,
          $Res Function(TableNavigateToTableKot) then) =
      _$TableNavigateToTableKotCopyWithImpl<$Res, TableNavigateToTableKot>;
  @useResult
  $Res call({int tableId, String tableName, int totalNoOfChairs});
}

/// @nodoc
class _$TableNavigateToTableKotCopyWithImpl<$Res,
        $Val extends TableNavigateToTableKot>
    implements $TableNavigateToTableKotCopyWith<$Res> {
  _$TableNavigateToTableKotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
    Object? tableName = null,
    Object? totalNoOfChairs = null,
  }) {
    return _then(_value.copyWith(
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int,
      tableName: null == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      totalNoOfChairs: null == totalNoOfChairs
          ? _value.totalNoOfChairs
          : totalNoOfChairs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableNavigateToTableKotImplCopyWith<$Res>
    implements $TableNavigateToTableKotCopyWith<$Res> {
  factory _$$TableNavigateToTableKotImplCopyWith(
          _$TableNavigateToTableKotImpl value,
          $Res Function(_$TableNavigateToTableKotImpl) then) =
      __$$TableNavigateToTableKotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tableId, String tableName, int totalNoOfChairs});
}

/// @nodoc
class __$$TableNavigateToTableKotImplCopyWithImpl<$Res>
    extends _$TableNavigateToTableKotCopyWithImpl<$Res,
        _$TableNavigateToTableKotImpl>
    implements _$$TableNavigateToTableKotImplCopyWith<$Res> {
  __$$TableNavigateToTableKotImplCopyWithImpl(
      _$TableNavigateToTableKotImpl _value,
      $Res Function(_$TableNavigateToTableKotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
    Object? tableName = null,
    Object? totalNoOfChairs = null,
  }) {
    return _then(_$TableNavigateToTableKotImpl(
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int,
      tableName: null == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      totalNoOfChairs: null == totalNoOfChairs
          ? _value.totalNoOfChairs
          : totalNoOfChairs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TableNavigateToTableKotImpl implements _TableNavigateToTableKot {
  const _$TableNavigateToTableKotImpl(
      {required this.tableId,
      required this.tableName,
      required this.totalNoOfChairs});

  @override
  final int tableId;
  @override
  final String tableName;
  @override
  final int totalNoOfChairs;

  @override
  String toString() {
    return 'TableNavigateToTableKot(tableId: $tableId, tableName: $tableName, totalNoOfChairs: $totalNoOfChairs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableNavigateToTableKotImpl &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.totalNoOfChairs, totalNoOfChairs) ||
                other.totalNoOfChairs == totalNoOfChairs));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, tableId, tableName, totalNoOfChairs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableNavigateToTableKotImplCopyWith<_$TableNavigateToTableKotImpl>
      get copyWith => __$$TableNavigateToTableKotImplCopyWithImpl<
          _$TableNavigateToTableKotImpl>(this, _$identity);
}

abstract class _TableNavigateToTableKot implements TableNavigateToTableKot {
  const factory _TableNavigateToTableKot(
      {required final int tableId,
      required final String tableName,
      required final int totalNoOfChairs}) = _$TableNavigateToTableKotImpl;

  @override
  int get tableId;
  @override
  String get tableName;
  @override
  int get totalNoOfChairs;
  @override
  @JsonKey(ignore: true)
  _$$TableNavigateToTableKotImplCopyWith<_$TableNavigateToTableKotImpl>
      get copyWith => throw _privateConstructorUsedError;
}
