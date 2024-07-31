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

Kot _$KotFromJson(Map<String, dynamic> json) {
  return _Kot.fromJson(json);
}

/// @nodoc
mixin _$Kot {
  int get kotId => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  double get totalTaxAmount => throw _privateConstructorUsedError;
  double get net => throw _privateConstructorUsedError;
  String? get customerName => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  List<CartProductItem> get kotFoodItems => throw _privateConstructorUsedError;
  int? get userId => throw _privateConstructorUsedError;
  int? get adminUserId => throw _privateConstructorUsedError; // dine in details
  List<TableWithChair>? get tablesWithChair =>
      throw _privateConstructorUsedError;
  int? get noOfSeatsRequired => throw _privateConstructorUsedError; // date time
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get closedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KotCopyWith<Kot> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KotCopyWith<$Res> {
  factory $KotCopyWith(Kot value, $Res Function(Kot) then) =
      _$KotCopyWithImpl<$Res, Kot>;
  @useResult
  $Res call(
      {int kotId,
      double total,
      double totalTaxAmount,
      double net,
      String? customerName,
      String? info,
      List<CartProductItem> kotFoodItems,
      int? userId,
      int? adminUserId,
      List<TableWithChair>? tablesWithChair,
      int? noOfSeatsRequired,
      DateTime createdAt,
      DateTime? closedAt});
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
    Object? net = null,
    Object? customerName = freezed,
    Object? info = freezed,
    Object? kotFoodItems = null,
    Object? userId = freezed,
    Object? adminUserId = freezed,
    Object? tablesWithChair = freezed,
    Object? noOfSeatsRequired = freezed,
    Object? createdAt = null,
    Object? closedAt = freezed,
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
      net: null == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as double,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      kotFoodItems: null == kotFoodItems
          ? _value.kotFoodItems
          : kotFoodItems // ignore: cast_nullable_to_non_nullable
              as List<CartProductItem>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      adminUserId: freezed == adminUserId
          ? _value.adminUserId
          : adminUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      tablesWithChair: freezed == tablesWithChair
          ? _value.tablesWithChair
          : tablesWithChair // ignore: cast_nullable_to_non_nullable
              as List<TableWithChair>?,
      noOfSeatsRequired: freezed == noOfSeatsRequired
          ? _value.noOfSeatsRequired
          : noOfSeatsRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$KotImplCopyWith<$Res> implements $KotCopyWith<$Res> {
  factory _$$KotImplCopyWith(_$KotImpl value, $Res Function(_$KotImpl) then) =
      __$$KotImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int kotId,
      double total,
      double totalTaxAmount,
      double net,
      String? customerName,
      String? info,
      List<CartProductItem> kotFoodItems,
      int? userId,
      int? adminUserId,
      List<TableWithChair>? tablesWithChair,
      int? noOfSeatsRequired,
      DateTime createdAt,
      DateTime? closedAt});
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
    Object? net = null,
    Object? customerName = freezed,
    Object? info = freezed,
    Object? kotFoodItems = null,
    Object? userId = freezed,
    Object? adminUserId = freezed,
    Object? tablesWithChair = freezed,
    Object? noOfSeatsRequired = freezed,
    Object? createdAt = null,
    Object? closedAt = freezed,
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
      net: null == net
          ? _value.net
          : net // ignore: cast_nullable_to_non_nullable
              as double,
      customerName: freezed == customerName
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      kotFoodItems: null == kotFoodItems
          ? _value._kotFoodItems
          : kotFoodItems // ignore: cast_nullable_to_non_nullable
              as List<CartProductItem>,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      adminUserId: freezed == adminUserId
          ? _value.adminUserId
          : adminUserId // ignore: cast_nullable_to_non_nullable
              as int?,
      tablesWithChair: freezed == tablesWithChair
          ? _value._tablesWithChair
          : tablesWithChair // ignore: cast_nullable_to_non_nullable
              as List<TableWithChair>?,
      noOfSeatsRequired: freezed == noOfSeatsRequired
          ? _value.noOfSeatsRequired
          : noOfSeatsRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      closedAt: freezed == closedAt
          ? _value.closedAt
          : closedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KotImpl implements _Kot {
  const _$KotImpl(
      {required this.kotId,
      required this.total,
      this.totalTaxAmount = 0,
      required this.net,
      this.customerName = null,
      this.info = null,
      final List<CartProductItem> kotFoodItems = const [],
      this.userId = null,
      this.adminUserId = null,
      final List<TableWithChair>? tablesWithChair = null,
      this.noOfSeatsRequired = null,
      required this.createdAt,
      required this.closedAt})
      : _kotFoodItems = kotFoodItems,
        _tablesWithChair = tablesWithChair;

  factory _$KotImpl.fromJson(Map<String, dynamic> json) =>
      _$$KotImplFromJson(json);

  @override
  final int kotId;
  @override
  final double total;
  @override
  @JsonKey()
  final double totalTaxAmount;
  @override
  final double net;
  @override
  @JsonKey()
  final String? customerName;
  @override
  @JsonKey()
  final String? info;
  final List<CartProductItem> _kotFoodItems;
  @override
  @JsonKey()
  List<CartProductItem> get kotFoodItems {
    if (_kotFoodItems is EqualUnmodifiableListView) return _kotFoodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_kotFoodItems);
  }

  @override
  @JsonKey()
  final int? userId;
  @override
  @JsonKey()
  final int? adminUserId;
// dine in details
  final List<TableWithChair>? _tablesWithChair;
// dine in details
  @override
  @JsonKey()
  List<TableWithChair>? get tablesWithChair {
    final value = _tablesWithChair;
    if (value == null) return null;
    if (_tablesWithChair is EqualUnmodifiableListView) return _tablesWithChair;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int? noOfSeatsRequired;
// date time
  @override
  final DateTime createdAt;
  @override
  final DateTime? closedAt;

  @override
  String toString() {
    return 'Kot(kotId: $kotId, total: $total, totalTaxAmount: $totalTaxAmount, net: $net, customerName: $customerName, info: $info, kotFoodItems: $kotFoodItems, userId: $userId, adminUserId: $adminUserId, tablesWithChair: $tablesWithChair, noOfSeatsRequired: $noOfSeatsRequired, createdAt: $createdAt, closedAt: $closedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KotImpl &&
            (identical(other.kotId, kotId) || other.kotId == kotId) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.totalTaxAmount, totalTaxAmount) ||
                other.totalTaxAmount == totalTaxAmount) &&
            (identical(other.net, net) || other.net == net) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality()
                .equals(other._kotFoodItems, _kotFoodItems) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.adminUserId, adminUserId) ||
                other.adminUserId == adminUserId) &&
            const DeepCollectionEquality()
                .equals(other._tablesWithChair, _tablesWithChair) &&
            (identical(other.noOfSeatsRequired, noOfSeatsRequired) ||
                other.noOfSeatsRequired == noOfSeatsRequired) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.closedAt, closedAt) ||
                other.closedAt == closedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      kotId,
      total,
      totalTaxAmount,
      net,
      customerName,
      info,
      const DeepCollectionEquality().hash(_kotFoodItems),
      userId,
      adminUserId,
      const DeepCollectionEquality().hash(_tablesWithChair),
      noOfSeatsRequired,
      createdAt,
      closedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KotImplCopyWith<_$KotImpl> get copyWith =>
      __$$KotImplCopyWithImpl<_$KotImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KotImplToJson(
      this,
    );
  }
}

abstract class _Kot implements Kot {
  const factory _Kot(
      {required final int kotId,
      required final double total,
      final double totalTaxAmount,
      required final double net,
      final String? customerName,
      final String? info,
      final List<CartProductItem> kotFoodItems,
      final int? userId,
      final int? adminUserId,
      final List<TableWithChair>? tablesWithChair,
      final int? noOfSeatsRequired,
      required final DateTime createdAt,
      required final DateTime? closedAt}) = _$KotImpl;

  factory _Kot.fromJson(Map<String, dynamic> json) = _$KotImpl.fromJson;

  @override
  int get kotId;
  @override
  double get total;
  @override
  double get totalTaxAmount;
  @override
  double get net;
  @override
  String? get customerName;
  @override
  String? get info;
  @override
  List<CartProductItem> get kotFoodItems;
  @override
  int? get userId;
  @override
  int? get adminUserId;
  @override // dine in details
  List<TableWithChair>? get tablesWithChair;
  @override
  int? get noOfSeatsRequired;
  @override // date time
  DateTime get createdAt;
  @override
  DateTime? get closedAt;
  @override
  @JsonKey(ignore: true)
  _$$KotImplCopyWith<_$KotImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
