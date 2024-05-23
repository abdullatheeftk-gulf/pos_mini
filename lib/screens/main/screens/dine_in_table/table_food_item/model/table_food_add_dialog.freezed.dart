// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_food_add_dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableFoodAddDialog {
  FoodItem? get foodItem => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableFoodAddDialogCopyWith<TableFoodAddDialog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableFoodAddDialogCopyWith<$Res> {
  factory $TableFoodAddDialogCopyWith(
          TableFoodAddDialog value, $Res Function(TableFoodAddDialog) then) =
      _$TableFoodAddDialogCopyWithImpl<$Res, TableFoodAddDialog>;
  @useResult
  $Res call({FoodItem? foodItem});

  $FoodItemCopyWith<$Res>? get foodItem;
}

/// @nodoc
class _$TableFoodAddDialogCopyWithImpl<$Res, $Val extends TableFoodAddDialog>
    implements $TableFoodAddDialogCopyWith<$Res> {
  _$TableFoodAddDialogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItem = freezed,
  }) {
    return _then(_value.copyWith(
      foodItem: freezed == foodItem
          ? _value.foodItem
          : foodItem // ignore: cast_nullable_to_non_nullable
              as FoodItem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FoodItemCopyWith<$Res>? get foodItem {
    if (_value.foodItem == null) {
      return null;
    }

    return $FoodItemCopyWith<$Res>(_value.foodItem!, (value) {
      return _then(_value.copyWith(foodItem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableFoodAddDialogImplCopyWith<$Res>
    implements $TableFoodAddDialogCopyWith<$Res> {
  factory _$$TableFoodAddDialogImplCopyWith(_$TableFoodAddDialogImpl value,
          $Res Function(_$TableFoodAddDialogImpl) then) =
      __$$TableFoodAddDialogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FoodItem? foodItem});

  @override
  $FoodItemCopyWith<$Res>? get foodItem;
}

/// @nodoc
class __$$TableFoodAddDialogImplCopyWithImpl<$Res>
    extends _$TableFoodAddDialogCopyWithImpl<$Res, _$TableFoodAddDialogImpl>
    implements _$$TableFoodAddDialogImplCopyWith<$Res> {
  __$$TableFoodAddDialogImplCopyWithImpl(_$TableFoodAddDialogImpl _value,
      $Res Function(_$TableFoodAddDialogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? foodItem = freezed,
  }) {
    return _then(_$TableFoodAddDialogImpl(
      foodItem: freezed == foodItem
          ? _value.foodItem
          : foodItem // ignore: cast_nullable_to_non_nullable
              as FoodItem?,
    ));
  }
}

/// @nodoc

class _$TableFoodAddDialogImpl implements _TableFoodAddDialog {
  const _$TableFoodAddDialogImpl({this.foodItem = null});

  @override
  @JsonKey()
  final FoodItem? foodItem;

  @override
  String toString() {
    return 'TableFoodAddDialog(foodItem: $foodItem)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableFoodAddDialogImpl &&
            (identical(other.foodItem, foodItem) ||
                other.foodItem == foodItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, foodItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableFoodAddDialogImplCopyWith<_$TableFoodAddDialogImpl> get copyWith =>
      __$$TableFoodAddDialogImplCopyWithImpl<_$TableFoodAddDialogImpl>(
          this, _$identity);
}

abstract class _TableFoodAddDialog implements TableFoodAddDialog {
  const factory _TableFoodAddDialog({final FoodItem? foodItem}) =
      _$TableFoodAddDialogImpl;

  @override
  FoodItem? get foodItem;
  @override
  @JsonKey(ignore: true)
  _$$TableFoodAddDialogImplCopyWith<_$TableFoodAddDialogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
