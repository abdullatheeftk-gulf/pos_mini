// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_with_chair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableWithChair _$TableWithChairFromJson(Map<String, dynamic> json) {
  return _TableWithChair.fromJson(json);
}

/// @nodoc
mixin _$TableWithChair {
  int get tableId => throw _privateConstructorUsedError;
  String get tableName => throw _privateConstructorUsedError;
  int get noOfChairRequired => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableWithChairCopyWith<TableWithChair> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableWithChairCopyWith<$Res> {
  factory $TableWithChairCopyWith(
          TableWithChair value, $Res Function(TableWithChair) then) =
      _$TableWithChairCopyWithImpl<$Res, TableWithChair>;
  @useResult
  $Res call({int tableId, String tableName, int noOfChairRequired});
}

/// @nodoc
class _$TableWithChairCopyWithImpl<$Res, $Val extends TableWithChair>
    implements $TableWithChairCopyWith<$Res> {
  _$TableWithChairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
    Object? tableName = null,
    Object? noOfChairRequired = null,
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
      noOfChairRequired: null == noOfChairRequired
          ? _value.noOfChairRequired
          : noOfChairRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableWithChairImplCopyWith<$Res>
    implements $TableWithChairCopyWith<$Res> {
  factory _$$TableWithChairImplCopyWith(_$TableWithChairImpl value,
          $Res Function(_$TableWithChairImpl) then) =
      __$$TableWithChairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tableId, String tableName, int noOfChairRequired});
}

/// @nodoc
class __$$TableWithChairImplCopyWithImpl<$Res>
    extends _$TableWithChairCopyWithImpl<$Res, _$TableWithChairImpl>
    implements _$$TableWithChairImplCopyWith<$Res> {
  __$$TableWithChairImplCopyWithImpl(
      _$TableWithChairImpl _value, $Res Function(_$TableWithChairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableId = null,
    Object? tableName = null,
    Object? noOfChairRequired = null,
  }) {
    return _then(_$TableWithChairImpl(
      tableId: null == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int,
      tableName: null == tableName
          ? _value.tableName
          : tableName // ignore: cast_nullable_to_non_nullable
              as String,
      noOfChairRequired: null == noOfChairRequired
          ? _value.noOfChairRequired
          : noOfChairRequired // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableWithChairImpl implements _TableWithChair {
  const _$TableWithChairImpl(
      {required this.tableId,
      required this.tableName,
      required this.noOfChairRequired});

  factory _$TableWithChairImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableWithChairImplFromJson(json);

  @override
  final int tableId;
  @override
  final String tableName;
  @override
  final int noOfChairRequired;

  @override
  String toString() {
    return 'TableWithChair(tableId: $tableId, tableName: $tableName, noOfChairRequired: $noOfChairRequired)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableWithChairImpl &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.tableName, tableName) ||
                other.tableName == tableName) &&
            (identical(other.noOfChairRequired, noOfChairRequired) ||
                other.noOfChairRequired == noOfChairRequired));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tableId, tableName, noOfChairRequired);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableWithChairImplCopyWith<_$TableWithChairImpl> get copyWith =>
      __$$TableWithChairImplCopyWithImpl<_$TableWithChairImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableWithChairImplToJson(
      this,
    );
  }
}

abstract class _TableWithChair implements TableWithChair {
  const factory _TableWithChair(
      {required final int tableId,
      required final String tableName,
      required final int noOfChairRequired}) = _$TableWithChairImpl;

  factory _TableWithChair.fromJson(Map<String, dynamic> json) =
      _$TableWithChairImpl.fromJson;

  @override
  int get tableId;
  @override
  String get tableName;
  @override
  int get noOfChairRequired;
  @override
  @JsonKey(ignore: true)
  _$$TableWithChairImplCopyWith<_$TableWithChairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
