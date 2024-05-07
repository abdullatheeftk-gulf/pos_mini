// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'barcode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Barcode _$BarcodeFromJson(Map<String, dynamic> json) {
  return _Barcode.fromJson(json);
}

/// @nodoc
mixin _$Barcode {
  int? get foodItemId => throw _privateConstructorUsedError;
  int? get multiFoodItemId => throw _privateConstructorUsedError;
  int? get tableId => throw _privateConstructorUsedError;
  @JsonKey(name: 'barcode')
  String? get mBarcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BarcodeCopyWith<Barcode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BarcodeCopyWith<$Res> {
  factory $BarcodeCopyWith(Barcode value, $Res Function(Barcode) then) =
      _$BarcodeCopyWithImpl<$Res, Barcode>;
  @useResult
  $Res call(
      {int? foodItemId,
      int? multiFoodItemId,
      int? tableId,
      @JsonKey(name: 'barcode') String? mBarcode});
}

/// @nodoc
class _$BarcodeCopyWithImpl<$Res, $Val extends Barcode>
    implements $BarcodeCopyWith<$Res> {
  _$BarcodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItemId = freezed,
    Object? multiFoodItemId = freezed,
    Object? tableId = freezed,
    Object? mBarcode = freezed,
  }) {
    return _then(_value.copyWith(
      foodItemId: freezed == foodItemId
          ? _value.foodItemId
          : foodItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      multiFoodItemId: freezed == multiFoodItemId
          ? _value.multiFoodItemId
          : multiFoodItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int?,
      mBarcode: freezed == mBarcode
          ? _value.mBarcode
          : mBarcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BarcodeImplCopyWith<$Res> implements $BarcodeCopyWith<$Res> {
  factory _$$BarcodeImplCopyWith(
          _$BarcodeImpl value, $Res Function(_$BarcodeImpl) then) =
      __$$BarcodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? foodItemId,
      int? multiFoodItemId,
      int? tableId,
      @JsonKey(name: 'barcode') String? mBarcode});
}

/// @nodoc
class __$$BarcodeImplCopyWithImpl<$Res>
    extends _$BarcodeCopyWithImpl<$Res, _$BarcodeImpl>
    implements _$$BarcodeImplCopyWith<$Res> {
  __$$BarcodeImplCopyWithImpl(
      _$BarcodeImpl _value, $Res Function(_$BarcodeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItemId = freezed,
    Object? multiFoodItemId = freezed,
    Object? tableId = freezed,
    Object? mBarcode = freezed,
  }) {
    return _then(_$BarcodeImpl(
      foodItemId: freezed == foodItemId
          ? _value.foodItemId
          : foodItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      multiFoodItemId: freezed == multiFoodItemId
          ? _value.multiFoodItemId
          : multiFoodItemId // ignore: cast_nullable_to_non_nullable
              as int?,
      tableId: freezed == tableId
          ? _value.tableId
          : tableId // ignore: cast_nullable_to_non_nullable
              as int?,
      mBarcode: freezed == mBarcode
          ? _value.mBarcode
          : mBarcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BarcodeImpl implements _Barcode {
  const _$BarcodeImpl(
      {this.foodItemId = null,
      this.multiFoodItemId = null,
      this.tableId = null,
      @JsonKey(name: 'barcode') required this.mBarcode});

  factory _$BarcodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$BarcodeImplFromJson(json);

  @override
  @JsonKey()
  final int? foodItemId;
  @override
  @JsonKey()
  final int? multiFoodItemId;
  @override
  @JsonKey()
  final int? tableId;
  @override
  @JsonKey(name: 'barcode')
  final String? mBarcode;

  @override
  String toString() {
    return 'Barcode(foodItemId: $foodItemId, multiFoodItemId: $multiFoodItemId, tableId: $tableId, mBarcode: $mBarcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BarcodeImpl &&
            (identical(other.foodItemId, foodItemId) ||
                other.foodItemId == foodItemId) &&
            (identical(other.multiFoodItemId, multiFoodItemId) ||
                other.multiFoodItemId == multiFoodItemId) &&
            (identical(other.tableId, tableId) || other.tableId == tableId) &&
            (identical(other.mBarcode, mBarcode) ||
                other.mBarcode == mBarcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, foodItemId, multiFoodItemId, tableId, mBarcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BarcodeImplCopyWith<_$BarcodeImpl> get copyWith =>
      __$$BarcodeImplCopyWithImpl<_$BarcodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BarcodeImplToJson(
      this,
    );
  }
}

abstract class _Barcode implements Barcode {
  const factory _Barcode(
          {final int? foodItemId,
          final int? multiFoodItemId,
          final int? tableId,
          @JsonKey(name: 'barcode') required final String? mBarcode}) =
      _$BarcodeImpl;

  factory _Barcode.fromJson(Map<String, dynamic> json) = _$BarcodeImpl.fromJson;

  @override
  int? get foodItemId;
  @override
  int? get multiFoodItemId;
  @override
  int? get tableId;
  @override
  @JsonKey(name: 'barcode')
  String? get mBarcode;
  @override
  @JsonKey(ignore: true)
  _$$BarcodeImplCopyWith<_$BarcodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
