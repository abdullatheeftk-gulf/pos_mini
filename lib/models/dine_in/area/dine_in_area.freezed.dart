// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dine_in_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DineInArea _$DineInAreaFromJson(Map<String, dynamic> json) {
  return _DineInArea.fromJson(json);
}

/// @nodoc
mixin _$DineInArea {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DineInAreaCopyWith<DineInArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DineInAreaCopyWith<$Res> {
  factory $DineInAreaCopyWith(
          DineInArea value, $Res Function(DineInArea) then) =
      _$DineInAreaCopyWithImpl<$Res, DineInArea>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$DineInAreaCopyWithImpl<$Res, $Val extends DineInArea>
    implements $DineInAreaCopyWith<$Res> {
  _$DineInAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DineInAreaImplCopyWith<$Res>
    implements $DineInAreaCopyWith<$Res> {
  factory _$$DineInAreaImplCopyWith(
          _$DineInAreaImpl value, $Res Function(_$DineInAreaImpl) then) =
      __$$DineInAreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$DineInAreaImplCopyWithImpl<$Res>
    extends _$DineInAreaCopyWithImpl<$Res, _$DineInAreaImpl>
    implements _$$DineInAreaImplCopyWith<$Res> {
  __$$DineInAreaImplCopyWithImpl(
      _$DineInAreaImpl _value, $Res Function(_$DineInAreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$DineInAreaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DineInAreaImpl implements _DineInArea {
  const _$DineInAreaImpl({this.id = 0, required this.name});

  factory _$DineInAreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$DineInAreaImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'DineInArea(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DineInAreaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DineInAreaImplCopyWith<_$DineInAreaImpl> get copyWith =>
      __$$DineInAreaImplCopyWithImpl<_$DineInAreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DineInAreaImplToJson(
      this,
    );
  }
}

abstract class _DineInArea implements DineInArea {
  const factory _DineInArea({final int id, required final String name}) =
      _$DineInAreaImpl;

  factory _DineInArea.fromJson(Map<String, dynamic> json) =
      _$DineInAreaImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DineInAreaImplCopyWith<_$DineInAreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
