// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_product_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CartProductItem _$CartProductItemFromJson(Map<String, dynamic> json) {
  return _CartProductItem.fromJson(json);
}

/// @nodoc
mixin _$CartProductItem {
  @JsonKey(name: "noOfItemsOrdered")
  double get qty => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String get cartProductName => throw _privateConstructorUsedError;
  String? get cartProductLocalName => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartProductItemCopyWith<CartProductItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartProductItemCopyWith<$Res> {
  factory $CartProductItemCopyWith(
          CartProductItem value, $Res Function(CartProductItem) then) =
      _$CartProductItemCopyWithImpl<$Res, CartProductItem>;
  @useResult
  $Res call(
      {@JsonKey(name: "noOfItemsOrdered") double qty,
      String? note,
      String cartProductName,
      String? cartProductLocalName,
      Product? product});

  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class _$CartProductItemCopyWithImpl<$Res, $Val extends CartProductItem>
    implements $CartProductItemCopyWith<$Res> {
  _$CartProductItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? note = freezed,
    Object? cartProductName = null,
    Object? cartProductLocalName = freezed,
    Object? product = freezed,
  }) {
    return _then(_value.copyWith(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      cartProductName: null == cartProductName
          ? _value.cartProductName
          : cartProductName // ignore: cast_nullable_to_non_nullable
              as String,
      cartProductLocalName: freezed == cartProductLocalName
          ? _value.cartProductLocalName
          : cartProductLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductCopyWith<$Res>? get product {
    if (_value.product == null) {
      return null;
    }

    return $ProductCopyWith<$Res>(_value.product!, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CartProductItemImplCopyWith<$Res>
    implements $CartProductItemCopyWith<$Res> {
  factory _$$CartProductItemImplCopyWith(_$CartProductItemImpl value,
          $Res Function(_$CartProductItemImpl) then) =
      __$$CartProductItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "noOfItemsOrdered") double qty,
      String? note,
      String cartProductName,
      String? cartProductLocalName,
      Product? product});

  @override
  $ProductCopyWith<$Res>? get product;
}

/// @nodoc
class __$$CartProductItemImplCopyWithImpl<$Res>
    extends _$CartProductItemCopyWithImpl<$Res, _$CartProductItemImpl>
    implements _$$CartProductItemImplCopyWith<$Res> {
  __$$CartProductItemImplCopyWithImpl(
      _$CartProductItemImpl _value, $Res Function(_$CartProductItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? qty = null,
    Object? note = freezed,
    Object? cartProductName = null,
    Object? cartProductLocalName = freezed,
    Object? product = freezed,
  }) {
    return _then(_$CartProductItemImpl(
      qty: null == qty
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as double,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      cartProductName: null == cartProductName
          ? _value.cartProductName
          : cartProductName // ignore: cast_nullable_to_non_nullable
              as String,
      cartProductLocalName: freezed == cartProductLocalName
          ? _value.cartProductLocalName
          : cartProductLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      product: freezed == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartProductItemImpl implements _CartProductItem {
  _$CartProductItemImpl(
      {@JsonKey(name: "noOfItemsOrdered") required this.qty,
      this.note = null,
      required this.cartProductName,
      this.cartProductLocalName = null,
      required this.product});

  factory _$CartProductItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartProductItemImplFromJson(json);

  @override
  @JsonKey(name: "noOfItemsOrdered")
  final double qty;
  @override
  @JsonKey()
  final String? note;
  @override
  final String cartProductName;
  @override
  @JsonKey()
  final String? cartProductLocalName;
  @override
  final Product? product;

  @override
  String toString() {
    return 'CartProductItem(qty: $qty, note: $note, cartProductName: $cartProductName, cartProductLocalName: $cartProductLocalName, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartProductItemImpl &&
            (identical(other.qty, qty) || other.qty == qty) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.cartProductName, cartProductName) ||
                other.cartProductName == cartProductName) &&
            (identical(other.cartProductLocalName, cartProductLocalName) ||
                other.cartProductLocalName == cartProductLocalName) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, qty, note, cartProductName, cartProductLocalName, product);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartProductItemImplCopyWith<_$CartProductItemImpl> get copyWith =>
      __$$CartProductItemImplCopyWithImpl<_$CartProductItemImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartProductItemImplToJson(
      this,
    );
  }
}

abstract class _CartProductItem implements CartProductItem {
  factory _CartProductItem(
      {@JsonKey(name: "noOfItemsOrdered") required final double qty,
      final String? note,
      required final String cartProductName,
      final String? cartProductLocalName,
      required final Product? product}) = _$CartProductItemImpl;

  factory _CartProductItem.fromJson(Map<String, dynamic> json) =
      _$CartProductItemImpl.fromJson;

  @override
  @JsonKey(name: "noOfItemsOrdered")
  double get qty;
  @override
  String? get note;
  @override
  String get cartProductName;
  @override
  String? get cartProductLocalName;
  @override
  Product? get product;
  @override
  @JsonKey(ignore: true)
  _$$CartProductItemImplCopyWith<_$CartProductItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
