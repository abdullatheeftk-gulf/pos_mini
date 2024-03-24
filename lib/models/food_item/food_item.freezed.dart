// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'food_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FoodItem _$FoodItemFromJson(Map<String, dynamic> json) {
  return _FoodItem.fromJson(json);
}

/// @nodoc
mixin _$FoodItem {
  int get foodItemId => throw _privateConstructorUsedError;
  String get foodItemName => throw _privateConstructorUsedError;
  String? get foodItemLocalName => throw _privateConstructorUsedError;
  double get foodItemPrice => throw _privateConstructorUsedError;
  double get foodItemTaxInPercentage => throw _privateConstructorUsedError;
  String? get foodItemImage => throw _privateConstructorUsedError;
  double get noOfTimesOrdered => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;
  int? get subCategoryId => throw _privateConstructorUsedError;
  List<MultiFoodItem> get multiFoodItems => throw _privateConstructorUsedError;
  List<int> get categories => throw _privateConstructorUsedError;
  String get barcode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FoodItemCopyWith<FoodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FoodItemCopyWith<$Res> {
  factory $FoodItemCopyWith(FoodItem value, $Res Function(FoodItem) then) =
      _$FoodItemCopyWithImpl<$Res, FoodItem>;
  @useResult
  $Res call(
      {int foodItemId,
      String foodItemName,
      String? foodItemLocalName,
      double foodItemPrice,
      double foodItemTaxInPercentage,
      String? foodItemImage,
      double noOfTimesOrdered,
      String? info,
      int? subCategoryId,
      List<MultiFoodItem> multiFoodItems,
      List<int> categories,
      String barcode});
}

/// @nodoc
class _$FoodItemCopyWithImpl<$Res, $Val extends FoodItem>
    implements $FoodItemCopyWith<$Res> {
  _$FoodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItemId = null,
    Object? foodItemName = null,
    Object? foodItemLocalName = freezed,
    Object? foodItemPrice = null,
    Object? foodItemTaxInPercentage = null,
    Object? foodItemImage = freezed,
    Object? noOfTimesOrdered = null,
    Object? info = freezed,
    Object? subCategoryId = freezed,
    Object? multiFoodItems = null,
    Object? categories = null,
    Object? barcode = null,
  }) {
    return _then(_value.copyWith(
      foodItemId: null == foodItemId
          ? _value.foodItemId
          : foodItemId // ignore: cast_nullable_to_non_nullable
              as int,
      foodItemName: null == foodItemName
          ? _value.foodItemName
          : foodItemName // ignore: cast_nullable_to_non_nullable
              as String,
      foodItemLocalName: freezed == foodItemLocalName
          ? _value.foodItemLocalName
          : foodItemLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      foodItemPrice: null == foodItemPrice
          ? _value.foodItemPrice
          : foodItemPrice // ignore: cast_nullable_to_non_nullable
              as double,
      foodItemTaxInPercentage: null == foodItemTaxInPercentage
          ? _value.foodItemTaxInPercentage
          : foodItemTaxInPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      foodItemImage: freezed == foodItemImage
          ? _value.foodItemImage
          : foodItemImage // ignore: cast_nullable_to_non_nullable
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
      multiFoodItems: null == multiFoodItems
          ? _value.multiFoodItems
          : multiFoodItems // ignore: cast_nullable_to_non_nullable
              as List<MultiFoodItem>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FoodItemImplCopyWith<$Res>
    implements $FoodItemCopyWith<$Res> {
  factory _$$FoodItemImplCopyWith(
          _$FoodItemImpl value, $Res Function(_$FoodItemImpl) then) =
      __$$FoodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int foodItemId,
      String foodItemName,
      String? foodItemLocalName,
      double foodItemPrice,
      double foodItemTaxInPercentage,
      String? foodItemImage,
      double noOfTimesOrdered,
      String? info,
      int? subCategoryId,
      List<MultiFoodItem> multiFoodItems,
      List<int> categories,
      String barcode});
}

/// @nodoc
class __$$FoodItemImplCopyWithImpl<$Res>
    extends _$FoodItemCopyWithImpl<$Res, _$FoodItemImpl>
    implements _$$FoodItemImplCopyWith<$Res> {
  __$$FoodItemImplCopyWithImpl(
      _$FoodItemImpl _value, $Res Function(_$FoodItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItemId = null,
    Object? foodItemName = null,
    Object? foodItemLocalName = freezed,
    Object? foodItemPrice = null,
    Object? foodItemTaxInPercentage = null,
    Object? foodItemImage = freezed,
    Object? noOfTimesOrdered = null,
    Object? info = freezed,
    Object? subCategoryId = freezed,
    Object? multiFoodItems = null,
    Object? categories = null,
    Object? barcode = null,
  }) {
    return _then(_$FoodItemImpl(
      foodItemId: null == foodItemId
          ? _value.foodItemId
          : foodItemId // ignore: cast_nullable_to_non_nullable
              as int,
      foodItemName: null == foodItemName
          ? _value.foodItemName
          : foodItemName // ignore: cast_nullable_to_non_nullable
              as String,
      foodItemLocalName: freezed == foodItemLocalName
          ? _value.foodItemLocalName
          : foodItemLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      foodItemPrice: null == foodItemPrice
          ? _value.foodItemPrice
          : foodItemPrice // ignore: cast_nullable_to_non_nullable
              as double,
      foodItemTaxInPercentage: null == foodItemTaxInPercentage
          ? _value.foodItemTaxInPercentage
          : foodItemTaxInPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      foodItemImage: freezed == foodItemImage
          ? _value.foodItemImage
          : foodItemImage // ignore: cast_nullable_to_non_nullable
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
      multiFoodItems: null == multiFoodItems
          ? _value._multiFoodItems
          : multiFoodItems // ignore: cast_nullable_to_non_nullable
              as List<MultiFoodItem>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<int>,
      barcode: null == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FoodItemImpl implements _FoodItem {
  const _$FoodItemImpl(
      {required this.foodItemId,
      required this.foodItemName,
      this.foodItemLocalName = null,
      required this.foodItemPrice,
      required this.foodItemTaxInPercentage,
      this.foodItemImage = null,
      this.noOfTimesOrdered = 0.0,
      this.info = null,
      this.subCategoryId = null,
      final List<MultiFoodItem> multiFoodItems = const [],
      required final List<int> categories,
      required this.barcode})
      : _multiFoodItems = multiFoodItems,
        _categories = categories;

  factory _$FoodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$FoodItemImplFromJson(json);

  @override
  final int foodItemId;
  @override
  final String foodItemName;
  @override
  @JsonKey()
  final String? foodItemLocalName;
  @override
  final double foodItemPrice;
  @override
  final double foodItemTaxInPercentage;
  @override
  @JsonKey()
  final String? foodItemImage;
  @override
  @JsonKey()
  final double noOfTimesOrdered;
  @override
  @JsonKey()
  final String? info;
  @override
  @JsonKey()
  final int? subCategoryId;
  final List<MultiFoodItem> _multiFoodItems;
  @override
  @JsonKey()
  List<MultiFoodItem> get multiFoodItems {
    if (_multiFoodItems is EqualUnmodifiableListView) return _multiFoodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multiFoodItems);
  }

  final List<int> _categories;
  @override
  List<int> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final String barcode;

  @override
  String toString() {
    return 'FoodItem(foodItemId: $foodItemId, foodItemName: $foodItemName, foodItemLocalName: $foodItemLocalName, foodItemPrice: $foodItemPrice, foodItemTaxInPercentage: $foodItemTaxInPercentage, foodItemImage: $foodItemImage, noOfTimesOrdered: $noOfTimesOrdered, info: $info, subCategoryId: $subCategoryId, multiFoodItems: $multiFoodItems, categories: $categories, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FoodItemImpl &&
            (identical(other.foodItemId, foodItemId) ||
                other.foodItemId == foodItemId) &&
            (identical(other.foodItemName, foodItemName) ||
                other.foodItemName == foodItemName) &&
            (identical(other.foodItemLocalName, foodItemLocalName) ||
                other.foodItemLocalName == foodItemLocalName) &&
            (identical(other.foodItemPrice, foodItemPrice) ||
                other.foodItemPrice == foodItemPrice) &&
            (identical(
                    other.foodItemTaxInPercentage, foodItemTaxInPercentage) ||
                other.foodItemTaxInPercentage == foodItemTaxInPercentage) &&
            (identical(other.foodItemImage, foodItemImage) ||
                other.foodItemImage == foodItemImage) &&
            (identical(other.noOfTimesOrdered, noOfTimesOrdered) ||
                other.noOfTimesOrdered == noOfTimesOrdered) &&
            (identical(other.info, info) || other.info == info) &&
            (identical(other.subCategoryId, subCategoryId) ||
                other.subCategoryId == subCategoryId) &&
            const DeepCollectionEquality()
                .equals(other._multiFoodItems, _multiFoodItems) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      foodItemId,
      foodItemName,
      foodItemLocalName,
      foodItemPrice,
      foodItemTaxInPercentage,
      foodItemImage,
      noOfTimesOrdered,
      info,
      subCategoryId,
      const DeepCollectionEquality().hash(_multiFoodItems),
      const DeepCollectionEquality().hash(_categories),
      barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FoodItemImplCopyWith<_$FoodItemImpl> get copyWith =>
      __$$FoodItemImplCopyWithImpl<_$FoodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FoodItemImplToJson(
      this,
    );
  }
}

abstract class _FoodItem implements FoodItem {
  const factory _FoodItem(
      {required final int foodItemId,
      required final String foodItemName,
      final String? foodItemLocalName,
      required final double foodItemPrice,
      required final double foodItemTaxInPercentage,
      final String? foodItemImage,
      final double noOfTimesOrdered,
      final String? info,
      final int? subCategoryId,
      final List<MultiFoodItem> multiFoodItems,
      required final List<int> categories,
      required final String barcode}) = _$FoodItemImpl;

  factory _FoodItem.fromJson(Map<String, dynamic> json) =
      _$FoodItemImpl.fromJson;

  @override
  int get foodItemId;
  @override
  String get foodItemName;
  @override
  String? get foodItemLocalName;
  @override
  double get foodItemPrice;
  @override
  double get foodItemTaxInPercentage;
  @override
  String? get foodItemImage;
  @override
  double get noOfTimesOrdered;
  @override
  String? get info;
  @override
  int? get subCategoryId;
  @override
  List<MultiFoodItem> get multiFoodItems;
  @override
  List<int> get categories;
  @override
  String get barcode;
  @override
  @JsonKey(ignore: true)
  _$$FoodItemImplCopyWith<_$FoodItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
