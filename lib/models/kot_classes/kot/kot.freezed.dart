// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Kot {
  int get kotId => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  double get totalTaxAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KotCopyWith<Kot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KotCopyWith<$Res> {
  factory $KotCopyWith(Kot value, $Res Function(Kot) then) =
      _$KotCopyWithImpl<$Res, Kot>;
  @useResult
  $Res call({int kotId, double total, double totalTaxAmount});
}

/// @nodoc
class _$KotCopyWithImpl<$Res, $Val extends Kot> implements $KotCopyWith<$Res> {
  _$KotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kotId = null,
    Object? total = null,
    Object? totalTaxAmount = null,
  }) {
    return _then(_value.copyWith(
      kotId: null == kotId
          ? _value.kotId
          : kotId // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      totalTaxAmount: null == totalTaxAmount
          ? _value.totalTaxAmount
          : totalTaxAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KotImplCopyWith<$Res> implements $KotCopyWith<$Res> {
  factory _$$KotImplCopyWith(_$KotImpl value, $Res Function(_$KotImpl) then) =
      __$$KotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int kotId, double total, double totalTaxAmount});
}

/// @nodoc
class __$$KotImplCopyWithImpl<$Res> extends _$KotCopyWithImpl<$Res, _$KotImpl>
    implements _$$KotImplCopyWith<$Res> {
  __$$KotImplCopyWithImpl(_$KotImpl _value, $Res Function(_$KotImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kotId = null,
    Object? total = null,
    Object? totalTaxAmount = null,
  }) {
    return _then(_$KotImpl(
      kotId: null == kotId
          ? _value.kotId
          : kotId // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      totalTaxAmount: null == totalTaxAmount
          ? _value.totalTaxAmount
          : totalTaxAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$KotImpl implements _Kot {
  const _$KotImpl(
      {required this.kotId, required this.total, this.totalTaxAmount = 0});

  @override
  final int kotId;
  @override
  final double total;
  @override
  @JsonKey()
  final double totalTaxAmount;

  @override
  String toString() {
    return 'Kot(kotId: $kotId, total: $total, totalTaxAmount: $totalTaxAmount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KotImpl &&
            (identical(other.kotId, kotId) || other.kotId == kotId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTaxAmount, totalTaxAmount) ||
                other.totalTaxAmount == totalTaxAmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, kotId, total, totalTaxAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KotImplCopyWith<_$KotImpl> get copyWith =>
      __$$KotImplCopyWithImpl<_$KotImpl>(this, _$identity);
}

abstract class _Kot implements Kot {
  const factory _Kot(
      {required final int kotId,
      required final double total,
      final double totalTaxAmount}) = _$KotImpl;

  @override
  int get kotId;
  @override
  double get total;
  @override
  double get totalTaxAmount;
  @override
  @JsonKey(ignore: true)
  _$$KotImplCopyWith<_$KotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
