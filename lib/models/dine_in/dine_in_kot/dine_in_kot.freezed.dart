// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dine_in_kot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DineInKot _$DineInKotFromJson(Map<String, dynamic> json) {
  return _DineInKot.fromJson(json);
}

/// @nodoc
mixin _$DineInKot {
  int get kotId => throw _privateConstructorUsedError;
  int get noOfChairRequired => throw _privateConstructorUsedError;
  int get dineTableId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DineInKotCopyWith<DineInKot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DineInKotCopyWith<$Res> {
  factory $DineInKotCopyWith(DineInKot value, $Res Function(DineInKot) then) =
      _$DineInKotCopyWithImpl<$Res, DineInKot>;
  @useResult
  $Res call({int kotId, int noOfChairRequired, int dineTableId});
}

/// @nodoc
class _$DineInKotCopyWithImpl<$Res, $Val extends DineInKot>
    implements $DineInKotCopyWith<$Res> {
  _$DineInKotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kotId = null,
    Object? noOfChairRequired = null,
    Object? dineTableId = null,
  }) {
    return _then(_value.copyWith(
      kotId: null == kotId
          ? _value.kotId
          : kotId // ignore: cast_nullable_to_non_nullable
              as int,
      noOfChairRequired: null == noOfChairRequired
          ? _value.noOfChairRequired
          : noOfChairRequired // ignore: cast_nullable_to_non_nullable
              as int,
      dineTableId: null == dineTableId
          ? _value.dineTableId
          : dineTableId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DineInKotImplCopyWith<$Res>
    implements $DineInKotCopyWith<$Res> {
  factory _$$DineInKotImplCopyWith(
          _$DineInKotImpl value, $Res Function(_$DineInKotImpl) then) =
      __$$DineInKotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int kotId, int noOfChairRequired, int dineTableId});
}

/// @nodoc
class __$$DineInKotImplCopyWithImpl<$Res>
    extends _$DineInKotCopyWithImpl<$Res, _$DineInKotImpl>
    implements _$$DineInKotImplCopyWith<$Res> {
  __$$DineInKotImplCopyWithImpl(
      _$DineInKotImpl _value, $Res Function(_$DineInKotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kotId = null,
    Object? noOfChairRequired = null,
    Object? dineTableId = null,
  }) {
    return _then(_$DineInKotImpl(
      kotId: null == kotId
          ? _value.kotId
          : kotId // ignore: cast_nullable_to_non_nullable
              as int,
      noOfChairRequired: null == noOfChairRequired
          ? _value.noOfChairRequired
          : noOfChairRequired // ignore: cast_nullable_to_non_nullable
              as int,
      dineTableId: null == dineTableId
          ? _value.dineTableId
          : dineTableId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DineInKotImpl implements _DineInKot {
  _$DineInKotImpl(
      {required this.kotId,
      required this.noOfChairRequired,
      required this.dineTableId});

  factory _$DineInKotImpl.fromJson(Map<String, dynamic> json) =>
      _$$DineInKotImplFromJson(json);

  @override
  final int kotId;
  @override
  final int noOfChairRequired;
  @override
  final int dineTableId;

  @override
  String toString() {
    return 'DineInKot(kotId: $kotId, noOfChairRequired: $noOfChairRequired, dineTableId: $dineTableId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DineInKotImpl &&
            (identical(other.kotId, kotId) || other.kotId == kotId) &&
            (identical(other.noOfChairRequired, noOfChairRequired) ||
                other.noOfChairRequired == noOfChairRequired) &&
            (identical(other.dineTableId, dineTableId) ||
                other.dineTableId == dineTableId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, kotId, noOfChairRequired, dineTableId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DineInKotImplCopyWith<_$DineInKotImpl> get copyWith =>
      __$$DineInKotImplCopyWithImpl<_$DineInKotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DineInKotImplToJson(
      this,
    );
  }
}

abstract class _DineInKot implements DineInKot {
  factory _DineInKot(
      {required final int kotId,
      required final int noOfChairRequired,
      required final int dineTableId}) = _$DineInKotImpl;

  factory _DineInKot.fromJson(Map<String, dynamic> json) =
      _$DineInKotImpl.fromJson;

  @override
  int get kotId;
  @override
  int get noOfChairRequired;
  @override
  int get dineTableId;
  @override
  @JsonKey(ignore: true)
  _$$DineInKotImplCopyWith<_$DineInKotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
