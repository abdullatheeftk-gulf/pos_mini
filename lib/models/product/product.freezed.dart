// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return _Product.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get productId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String? get productLocalName => throw _privateConstructorUsedError;
  double get productPrice => throw _privateConstructorUsedError;
  double get productTaxInPercentage => throw _privateConstructorUsedError;
  String? get productImage => throw _privateConstructorUsedError;
  double get noOfTimesOrdered => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  int? get subCategoryId => throw _privateConstructorUsedError;
  List<MultiProduct> get multiProducts => throw _privateConstructorUsedError;
  List<int> get categories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int productId,
      String productName,
      String? productLocalName,
      double productPrice,
      double productTaxInPercentage,
      String? productImage,
      double noOfTimesOrdered,
      String? info,
      int? subCategoryId,
      List<MultiProduct> multiProducts,
      List<int> categories});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productLocalName = freezed,
    Object? productPrice = null,
    Object? productTaxInPercentage = null,
    Object? productImage = freezed,
    Object? noOfTimesOrdered = null,
    Object? info = freezed,
    Object? subCategoryId = freezed,
    Object? multiProducts = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productLocalName: freezed == productLocalName
          ? _value.productLocalName
          : productLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productTaxInPercentage: null == productTaxInPercentage
          ? _value.productTaxInPercentage
          : productTaxInPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfTimesOrdered: null == noOfTimesOrdered
          ? _value.noOfTimesOrdered
          : noOfTimesOrdered // ignore: cast_nullable_to_non_nullable
              as double,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      multiProducts: null == multiProducts
          ? _value.multiProducts
          : multiProducts // ignore: cast_nullable_to_non_nullable
              as List<MultiProduct>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImplCopyWith<$Res> implements $ProductCopyWith<$Res> {
  factory _$$ProductImplCopyWith(
          _$ProductImpl value, $Res Function(_$ProductImpl) then) =
      __$$ProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int productId,
      String productName,
      String? productLocalName,
      double productPrice,
      double productTaxInPercentage,
      String? productImage,
      double noOfTimesOrdered,
      String? info,
      int? subCategoryId,
      List<MultiProduct> multiProducts,
      List<int> categories});
}

/// @nodoc
class __$$ProductImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductImpl>
    implements _$$ProductImplCopyWith<$Res> {
  __$$ProductImplCopyWithImpl(
      _$ProductImpl _value, $Res Function(_$ProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? productName = null,
    Object? productLocalName = freezed,
    Object? productPrice = null,
    Object? productTaxInPercentage = null,
    Object? productImage = freezed,
    Object? noOfTimesOrdered = null,
    Object? info = freezed,
    Object? subCategoryId = freezed,
    Object? multiProducts = null,
    Object? categories = null,
  }) {
    return _then(_$ProductImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productLocalName: freezed == productLocalName
          ? _value.productLocalName
          : productLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      productPrice: null == productPrice
          ? _value.productPrice
          : productPrice // ignore: cast_nullable_to_non_nullable
              as double,
      productTaxInPercentage: null == productTaxInPercentage
          ? _value.productTaxInPercentage
          : productTaxInPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      productImage: freezed == productImage
          ? _value.productImage
          : productImage // ignore: cast_nullable_to_non_nullable
              as String?,
      noOfTimesOrdered: null == noOfTimesOrdered
          ? _value.noOfTimesOrdered
          : noOfTimesOrdered // ignore: cast_nullable_to_non_nullable
              as double,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
      subCategoryId: freezed == subCategoryId
          ? _value.subCategoryId
          : subCategoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      multiProducts: null == multiProducts
          ? _value._multiProducts
          : multiProducts // ignore: cast_nullable_to_non_nullable
              as List<MultiProduct>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImpl implements _Product {
  const _$ProductImpl(
      {required this.productId,
      required this.productName,
      this.productLocalName = null,
      required this.productPrice,
      required this.productTaxInPercentage,
      this.productImage = null,
      this.noOfTimesOrdered = 0.0,
      this.info = null,
      this.subCategoryId = null,
      final List<MultiProduct> multiProducts = const [],
      required final List<int> categories})
      : _multiProducts = multiProducts,
        _categories = categories;

  factory _$ProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImplFromJson(json);

  @override
  final int productId;
  @override
  final String productName;
  @override
  @JsonKey()
  final String? productLocalName;
  @override
  final double productPrice;
  @override
  final double productTaxInPercentage;
  @override
  @JsonKey()
  final String? productImage;
  @override
  @JsonKey()
  final double noOfTimesOrdered;
  @override
  @JsonKey()
  final String? info;
  @override
  @JsonKey()
  final int? subCategoryId;
  final List<MultiProduct> _multiProducts;
  @override
  @JsonKey()
  List<MultiProduct> get multiProducts {
    if (_multiProducts is EqualUnmodifiableListView) return _multiProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multiProducts);
  }

  final List<int> _categories;
  @override
  List<int> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'Product(productId: $productId, productName: $productName, productLocalName: $productLocalName, productPrice: $productPrice, productTaxInPercentage: $productTaxInPercentage, productImage: $productImage, noOfTimesOrdered: $noOfTimesOrdered, info: $info, subCategoryId: $subCategoryId, multiProducts: $multiProducts, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productLocalName, productLocalName) ||
                other.productLocalName == productLocalName) &&
            (identical(other.productPrice, productPrice) ||
                other.productPrice == productPrice) &&
            (identical(other.productTaxInPercentage, productTaxInPercentage) ||
                other.productTaxInPercentage == productTaxInPercentage) &&
            (identical(other.productImage, productImage) ||
                other.productImage == productImage) &&
            (identical(other.noOfTimesOrdered, noOfTimesOrdered) ||
                other.noOfTimesOrdered == noOfTimesOrdered) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            const DeepCollectionEquality()
                .equals(other._multiProducts, _multiProducts) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      productId,
      productName,
      productLocalName,
      productPrice,
      productTaxInPercentage,
      productImage,
      noOfTimesOrdered,
      info,
      subCategoryId,
      const DeepCollectionEquality().hash(_multiProducts),
      const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      __$$ProductImplCopyWithImpl<_$ProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImplToJson(
      this,
    );
  }
}

abstract class _Product implements Product {
  const factory _Product(
      {required final int productId,
      required final String productName,
      final String? productLocalName,
      required final double productPrice,
      required final double productTaxInPercentage,
      final String? productImage,
      final double noOfTimesOrdered,
      final String? info,
      final int? subCategoryId,
      final List<MultiProduct> multiProducts,
      required final List<int> categories}) = _$ProductImpl;

  factory _Product.fromJson(Map<String, dynamic> json) = _$ProductImpl.fromJson;

  @override
  int get productId;
  @override
  String get productName;
  @override
  String? get productLocalName;
  @override
  double get productPrice;
  @override
  double get productTaxInPercentage;
  @override
  String? get productImage;
  @override
  double get noOfTimesOrdered;
  @override
  String? get info;
  @override
  int? get subCategoryId;
  @override
  List<MultiProduct> get multiProducts;
  @override
  List<int> get categories;
  @override
  @JsonKey(ignore: true)
  _$$ProductImplCopyWith<_$ProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
