// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_food_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiFoodItem _$MultiFoodItemFromJson(Map<String, dynamic> json) {
  return _MultiFoodItem.fromJson(json);
}

/// @nodoc
mixin _$MultiFoodItem {
  int get multiFoodItemId => throw _privateConstructorUsedError;
  int get parentFoodItemId => throw _privateConstructorUsedError;
  String get multiFoodItemName => throw _privateConstructorUsedError;
  String? get multiFoodItemLocalName => throw _privateConstructorUsedError;
  String? get multiFoodItemImage => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiFoodItemCopyWith<MultiFoodItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiFoodItemCopyWith<$Res> {
  factory $MultiFoodItemCopyWith(
          MultiFoodItem value, $Res Function(MultiFoodItem) then) =
      _$MultiFoodItemCopyWithImpl<$Res, MultiFoodItem>;
  @useResult
  $Res call(
      {int multiFoodItemId,
      int parentFoodItemId,
      String multiFoodItemName,
      String? multiFoodItemLocalName,
      String? multiFoodItemImage,
      String? info});
}

/// @nodoc
class _$MultiFoodItemCopyWithImpl<$Res, $Val extends MultiFoodItem>
    implements $MultiFoodItemCopyWith<$Res> {
  _$MultiFoodItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiFoodItemId = null,
    Object? parentFoodItemId = null,
    Object? multiFoodItemName = null,
    Object? multiFoodItemLocalName = freezed,
    Object? multiFoodItemImage = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      multiFoodItemId: null == multiFoodItemId
          ? _value.multiFoodItemId
          : multiFoodItemId // ignore: cast_nullable_to_non_nullable
              as int,
      parentFoodItemId: null == parentFoodItemId
          ? _value.parentFoodItemId
          : parentFoodItemId // ignore: cast_nullable_to_non_nullable
              as int,
      multiFoodItemName: null == multiFoodItemName
          ? _value.multiFoodItemName
          : multiFoodItemName // ignore: cast_nullable_to_non_nullable
              as String,
      multiFoodItemLocalName: freezed == multiFoodItemLocalName
          ? _value.multiFoodItemLocalName
          : multiFoodItemLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      multiFoodItemImage: freezed == multiFoodItemImage
          ? _value.multiFoodItemImage
          : multiFoodItemImage // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiFoodItemImplCopyWith<$Res>
    implements $MultiFoodItemCopyWith<$Res> {
  factory _$$MultiFoodItemImplCopyWith(
          _$MultiFoodItemImpl value, $Res Function(_$MultiFoodItemImpl) then) =
      __$$MultiFoodItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int multiFoodItemId,
      int parentFoodItemId,
      String multiFoodItemName,
      String? multiFoodItemLocalName,
      String? multiFoodItemImage,
      String? info});
}

/// @nodoc
class __$$MultiFoodItemImplCopyWithImpl<$Res>
    extends _$MultiFoodItemCopyWithImpl<$Res, _$MultiFoodItemImpl>
    implements _$$MultiFoodItemImplCopyWith<$Res> {
  __$$MultiFoodItemImplCopyWithImpl(
      _$MultiFoodItemImpl _value, $Res Function(_$MultiFoodItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiFoodItemId = null,
    Object? parentFoodItemId = null,
    Object? multiFoodItemName = null,
    Object? multiFoodItemLocalName = freezed,
    Object? multiFoodItemImage = freezed,
    Object? info = freezed,
  }) {
    return _then(_$MultiFoodItemImpl(
      multiFoodItemId: null == multiFoodItemId
          ? _value.multiFoodItemId
          : multiFoodItemId // ignore: cast_nullable_to_non_nullable
              as int,
      parentFoodItemId: null == parentFoodItemId
          ? _value.parentFoodItemId
          : parentFoodItemId // ignore: cast_nullable_to_non_nullable
              as int,
      multiFoodItemName: null == multiFoodItemName
          ? _value.multiFoodItemName
          : multiFoodItemName // ignore: cast_nullable_to_non_nullable
              as String,
      multiFoodItemLocalName: freezed == multiFoodItemLocalName
          ? _value.multiFoodItemLocalName
          : multiFoodItemLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      multiFoodItemImage: freezed == multiFoodItemImage
          ? _value.multiFoodItemImage
          : multiFoodItemImage // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MultiFoodItemImpl implements _MultiFoodItem {
  const _$MultiFoodItemImpl(
      {required this.multiFoodItemId,
      required this.parentFoodItemId,
      required this.multiFoodItemName,
      this.multiFoodItemLocalName = null,
      this.multiFoodItemImage = null,
      this.info = null});

  factory _$MultiFoodItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiFoodItemImplFromJson(json);

  @override
  final int multiFoodItemId;
  @override
  final int parentFoodItemId;
  @override
  final String multiFoodItemName;
  @override
  @JsonKey()
  final String? multiFoodItemLocalName;
  @override
  @JsonKey()
  final String? multiFoodItemImage;
  @override
  @JsonKey()
  final String? info;

  @override
  String toString() {
    return 'MultiFoodItem(multiFoodItemId: $multiFoodItemId, parentFoodItemId: $parentFoodItemId, multiFoodItemName: $multiFoodItemName, multiFoodItemLocalName: $multiFoodItemLocalName, multiFoodItemImage: $multiFoodItemImage, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiFoodItemImpl &&
            (identical(other.multiFoodItemId, multiFoodItemId) ||
                other.multiFoodItemId == multiFoodItemId) &&
            (identical(other.parentFoodItemId, parentFoodItemId) ||
                other.parentFoodItemId == parentFoodItemId) &&
            (identical(other.multiFoodItemName, multiFoodItemName) ||
                other.multiFoodItemName == multiFoodItemName) &&
            (identical(other.multiFoodItemLocalName, multiFoodItemLocalName) ||
                other.multiFoodItemLocalName == multiFoodItemLocalName) &&
            (identical(other.multiFoodItemImage, multiFoodItemImage) ||
                other.multiFoodItemImage == multiFoodItemImage) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      multiFoodItemId,
      parentFoodItemId,
      multiFoodItemName,
      multiFoodItemLocalName,
      multiFoodItemImage,
      info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiFoodItemImplCopyWith<_$MultiFoodItemImpl> get copyWith =>
      __$$MultiFoodItemImplCopyWithImpl<_$MultiFoodItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiFoodItemImplToJson(
      this,
    );
  }
}

abstract class _MultiFoodItem implements MultiFoodItem {
  const factory _MultiFoodItem(
      {required final int multiFoodItemId,
      required final int parentFoodItemId,
      required final String multiFoodItemName,
      final String? multiFoodItemLocalName,
      final String? multiFoodItemImage,
      final String? info}) = _$MultiFoodItemImpl;

  factory _MultiFoodItem.fromJson(Map<String, dynamic> json) =
      _$MultiFoodItemImpl.fromJson;

  @override
  int get multiFoodItemId;
  @override
  int get parentFoodItemId;
  @override
  String get multiFoodItemName;
  @override
  String? get multiFoodItemLocalName;
  @override
  String? get multiFoodItemImage;
  @override
  String? get info;
  @override
  @JsonKey(ignore: true)
  _$$MultiFoodItemImplCopyWith<_$MultiFoodItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
