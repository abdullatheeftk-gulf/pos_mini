// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multi_product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MultiProduct _$MultiProductFromJson(Map<String, dynamic> json) {
  return _MultiProduct.fromJson(json);
}

/// @nodoc
mixin _$MultiProduct {
  int get multiProductId => throw _privateConstructorUsedError;
  int get parentProductId => throw _privateConstructorUsedError;
  String get multiProductName => throw _privateConstructorUsedError;
  String? get multiProductLocalName => throw _privateConstructorUsedError;
  String? get multiProductImage => throw _privateConstructorUsedError;
  String? get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultiProductCopyWith<MultiProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiProductCopyWith<$Res> {
  factory $MultiProductCopyWith(
          MultiProduct value, $Res Function(MultiProduct) then) =
      _$MultiProductCopyWithImpl<$Res, MultiProduct>;
  @useResult
  $Res call(
      {int multiProductId,
      int parentProductId,
      String multiProductName,
      String? multiProductLocalName,
      String? multiProductImage,
      String? info});
}

/// @nodoc
class _$MultiProductCopyWithImpl<$Res, $Val extends MultiProduct>
    implements $MultiProductCopyWith<$Res> {
  _$MultiProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiProductId = null,
    Object? parentProductId = null,
    Object? multiProductName = null,
    Object? multiProductLocalName = freezed,
    Object? multiProductImage = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      multiProductId: null == multiProductId
          ? _value.multiProductId
          : multiProductId // ignore: cast_nullable_to_non_nullable
              as int,
      parentProductId: null == parentProductId
          ? _value.parentProductId
          : parentProductId // ignore: cast_nullable_to_non_nullable
              as int,
      multiProductName: null == multiProductName
          ? _value.multiProductName
          : multiProductName // ignore: cast_nullable_to_non_nullable
              as String,
      multiProductLocalName: freezed == multiProductLocalName
          ? _value.multiProductLocalName
          : multiProductLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      multiProductImage: freezed == multiProductImage
          ? _value.multiProductImage
          : multiProductImage // ignore: cast_nullable_to_non_nullable
              as String?,
      info: freezed == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiProductImplCopyWith<$Res>
    implements $MultiProductCopyWith<$Res> {
  factory _$$MultiProductImplCopyWith(
          _$MultiProductImpl value, $Res Function(_$MultiProductImpl) then) =
      __$$MultiProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int multiProductId,
      int parentProductId,
      String multiProductName,
      String? multiProductLocalName,
      String? multiProductImage,
      String? info});
}

/// @nodoc
class __$$MultiProductImplCopyWithImpl<$Res>
    extends _$MultiProductCopyWithImpl<$Res, _$MultiProductImpl>
    implements _$$MultiProductImplCopyWith<$Res> {
  __$$MultiProductImplCopyWithImpl(
      _$MultiProductImpl _value, $Res Function(_$MultiProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? multiProductId = null,
    Object? parentProductId = null,
    Object? multiProductName = null,
    Object? multiProductLocalName = freezed,
    Object? multiProductImage = freezed,
    Object? info = freezed,
  }) {
    return _then(_$MultiProductImpl(
      multiProductId: null == multiProductId
          ? _value.multiProductId
          : multiProductId // ignore: cast_nullable_to_non_nullable
              as int,
      parentProductId: null == parentProductId
          ? _value.parentProductId
          : parentProductId // ignore: cast_nullable_to_non_nullable
              as int,
      multiProductName: null == multiProductName
          ? _value.multiProductName
          : multiProductName // ignore: cast_nullable_to_non_nullable
              as String,
      multiProductLocalName: freezed == multiProductLocalName
          ? _value.multiProductLocalName
          : multiProductLocalName // ignore: cast_nullable_to_non_nullable
              as String?,
      multiProductImage: freezed == multiProductImage
          ? _value.multiProductImage
          : multiProductImage // ignore: cast_nullable_to_non_nullable
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
class _$MultiProductImpl implements _MultiProduct {
  const _$MultiProductImpl(
      {required this.multiProductId,
      required this.parentProductId,
      required this.multiProductName,
      this.multiProductLocalName = null,
      this.multiProductImage = null,
      this.info = null});

  factory _$MultiProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$MultiProductImplFromJson(json);

  @override
  final int multiProductId;
  @override
  final int parentProductId;
  @override
  final String multiProductName;
  @override
  @JsonKey()
  final String? multiProductLocalName;
  @override
  @JsonKey()
  final String? multiProductImage;
  @override
  @JsonKey()
  final String? info;

  @override
  String toString() {
    return 'MultiProduct(multiProductId: $multiProductId, parentProductId: $parentProductId, multiProductName: $multiProductName, multiProductLocalName: $multiProductLocalName, multiProductImage: $multiProductImage, info: $info)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiProductImpl &&
            (identical(other.multiProductId, multiProductId) ||
                other.multiProductId == multiProductId) &&
            (identical(other.parentProductId, parentProductId) ||
                other.parentProductId == parentProductId) &&
            (identical(other.multiProductName, multiProductName) ||
                other.multiProductName == multiProductName) &&
            (identical(other.multiProductLocalName, multiProductLocalName) ||
                other.multiProductLocalName == multiProductLocalName) &&
            (identical(other.multiProductImage, multiProductImage) ||
                other.multiProductImage == multiProductImage) &&
            (identical(other.info, info) || other.info == info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, multiProductId, parentProductId,
      multiProductName, multiProductLocalName, multiProductImage, info);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiProductImplCopyWith<_$MultiProductImpl> get copyWith =>
      __$$MultiProductImplCopyWithImpl<_$MultiProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MultiProductImplToJson(
      this,
    );
  }
}

abstract class _MultiProduct implements MultiProduct {
  const factory _MultiProduct(
      {required final int multiProductId,
      required final int parentProductId,
      required final String multiProductName,
      final String? multiProductLocalName,
      final String? multiProductImage,
      final String? info}) = _$MultiProductImpl;

  factory _MultiProduct.fromJson(Map<String, dynamic> json) =
      _$MultiProductImpl.fromJson;

  @override
  int get multiProductId;
  @override
  int get parentProductId;
  @override
  String get multiProductName;
  @override
  String? get multiProductLocalName;
  @override
  String? get multiProductImage;
  @override
  String? get info;
  @override
  @JsonKey(ignore: true)
  _$$MultiProductImplCopyWith<_$MultiProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
