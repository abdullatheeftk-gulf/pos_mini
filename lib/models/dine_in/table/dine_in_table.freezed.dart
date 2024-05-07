// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dine_in_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DineInTable _$DineInTableFromJson(Map<String, dynamic> json) {
  return _DineInTable.fromJson(json);
}

/// @nodoc
mixin _$DineInTable {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get noOfSeats => throw _privateConstructorUsedError;
  int get noOfSeatsOccupied => throw _privateConstructorUsedError;
  int get areaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DineInTableCopyWith<DineInTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DineInTableCopyWith<$Res> {
  factory $DineInTableCopyWith(
          DineInTable value, $Res Function(DineInTable) then) =
      _$DineInTableCopyWithImpl<$Res, DineInTable>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      int noOfSeats,
      int noOfSeatsOccupied,
      int areaId});
}

/// @nodoc
class _$DineInTableCopyWithImpl<$Res, $Val extends DineInTable>
    implements $DineInTableCopyWith<$Res> {
  _$DineInTableCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? noOfSeats = null,
    Object? noOfSeatsOccupied = null,
    Object? areaId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      noOfSeats: null == noOfSeats
          ? _value.noOfSeats
          : noOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      noOfSeatsOccupied: null == noOfSeatsOccupied
          ? _value.noOfSeatsOccupied
          : noOfSeatsOccupied // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DineInTableImplCopyWith<$Res>
    implements $DineInTableCopyWith<$Res> {
  factory _$$DineInTableImplCopyWith(
          _$DineInTableImpl value, $Res Function(_$DineInTableImpl) then) =
      __$$DineInTableImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      int noOfSeats,
      int noOfSeatsOccupied,
      int areaId});
}

/// @nodoc
class __$$DineInTableImplCopyWithImpl<$Res>
    extends _$DineInTableCopyWithImpl<$Res, _$DineInTableImpl>
    implements _$$DineInTableImplCopyWith<$Res> {
  __$$DineInTableImplCopyWithImpl(
      _$DineInTableImpl _value, $Res Function(_$DineInTableImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? noOfSeats = null,
    Object? noOfSeatsOccupied = null,
    Object? areaId = null,
  }) {
    return _then(_$DineInTableImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      noOfSeats: null == noOfSeats
          ? _value.noOfSeats
          : noOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      noOfSeatsOccupied: null == noOfSeatsOccupied
          ? _value.noOfSeatsOccupied
          : noOfSeatsOccupied // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DineInTableImpl implements _DineInTable {
  const _$DineInTableImpl(
      {this.id = 0,
      required this.name,
      required this.image,
      required this.noOfSeats,
      required this.noOfSeatsOccupied,
      required this.areaId});

  factory _$DineInTableImpl.fromJson(Map<String, dynamic> json) =>
      _$$DineInTableImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String name;
  @override
  final String image;
  @override
  final int noOfSeats;
  @override
  final int noOfSeatsOccupied;
  @override
  final int areaId;

  @override
  String toString() {
    return 'DineInTable(id: $id, name: $name, image: $image, noOfSeats: $noOfSeats, noOfSeatsOccupied: $noOfSeatsOccupied, areaId: $areaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DineInTableImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.noOfSeats, noOfSeats) ||
                other.noOfSeats == noOfSeats) &&
            (identical(other.noOfSeatsOccupied, noOfSeatsOccupied) ||
                other.noOfSeatsOccupied == noOfSeatsOccupied) &&
            (identical(other.areaId, areaId) || other.areaId == areaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, noOfSeats, noOfSeatsOccupied, areaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DineInTableImplCopyWith<_$DineInTableImpl> get copyWith =>
      __$$DineInTableImplCopyWithImpl<_$DineInTableImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DineInTableImplToJson(
      this,
    );
  }
}

abstract class _DineInTable implements DineInTable {
  const factory _DineInTable(
      {final int id,
      required final String name,
      required final String image,
      required final int noOfSeats,
      required final int noOfSeatsOccupied,
      required final int areaId}) = _$DineInTableImpl;

  factory _DineInTable.fromJson(Map<String, dynamic> json) =
      _$DineInTableImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  int get noOfSeats;
  @override
  int get noOfSeatsOccupied;
  @override
  int get areaId;
  @override
  @JsonKey(ignore: true)
  _$$DineInTableImplCopyWith<_$DineInTableImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
