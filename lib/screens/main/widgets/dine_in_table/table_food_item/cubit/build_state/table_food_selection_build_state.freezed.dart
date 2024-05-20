// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_food_selection_build_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableFoodSelectionBuildState {
  bool get showProgressBar => throw _privateConstructorUsedError;
  List<FoodItem>? get foodItems => throw _privateConstructorUsedError;
  List<Category>? get categories => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableFoodSelectionBuildStateCopyWith<TableFoodSelectionBuildState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableFoodSelectionBuildStateCopyWith<$Res> {
  factory $TableFoodSelectionBuildStateCopyWith(
          TableFoodSelectionBuildState value,
          $Res Function(TableFoodSelectionBuildState) then) =
      _$TableFoodSelectionBuildStateCopyWithImpl<$Res,
          TableFoodSelectionBuildState>;
  @useResult
  $Res call(
      {bool showProgressBar,
      List<FoodItem>? foodItems,
      List<Category>? categories,
      String? errorMessage});
}

/// @nodoc
class _$TableFoodSelectionBuildStateCopyWithImpl<$Res,
        $Val extends TableFoodSelectionBuildState>
    implements $TableFoodSelectionBuildStateCopyWith<$Res> {
  _$TableFoodSelectionBuildStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? foodItems = freezed,
    Object? categories = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      foodItems: freezed == foodItems
          ? _value.foodItems
          : foodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>?,
      categories: freezed == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableFoodSelectionBuildStateImplCopyWith<$Res>
    implements $TableFoodSelectionBuildStateCopyWith<$Res> {
  factory _$$TableFoodSelectionBuildStateImplCopyWith(
          _$TableFoodSelectionBuildStateImpl value,
          $Res Function(_$TableFoodSelectionBuildStateImpl) then) =
      __$$TableFoodSelectionBuildStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool showProgressBar,
      List<FoodItem>? foodItems,
      List<Category>? categories,
      String? errorMessage});
}

/// @nodoc
class __$$TableFoodSelectionBuildStateImplCopyWithImpl<$Res>
    extends _$TableFoodSelectionBuildStateCopyWithImpl<$Res,
        _$TableFoodSelectionBuildStateImpl>
    implements _$$TableFoodSelectionBuildStateImplCopyWith<$Res> {
  __$$TableFoodSelectionBuildStateImplCopyWithImpl(
      _$TableFoodSelectionBuildStateImpl _value,
      $Res Function(_$TableFoodSelectionBuildStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showProgressBar = null,
    Object? foodItems = freezed,
    Object? categories = freezed,
    Object? errorMessage = freezed,
  }) {
    return _then(_$TableFoodSelectionBuildStateImpl(
      showProgressBar: null == showProgressBar
          ? _value.showProgressBar
          : showProgressBar // ignore: cast_nullable_to_non_nullable
              as bool,
      foodItems: freezed == foodItems
          ? _value._foodItems
          : foodItems // ignore: cast_nullable_to_non_nullable
              as List<FoodItem>?,
      categories: freezed == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$TableFoodSelectionBuildStateImpl
    implements _TableFoodSelectionBuildState {
  const _$TableFoodSelectionBuildStateImpl(
      {this.showProgressBar = false,
      final List<FoodItem>? foodItems = null,
      final List<Category>? categories = null,
      this.errorMessage = null})
      : _foodItems = foodItems,
        _categories = categories;

  @override
  @JsonKey()
  final bool showProgressBar;
  final List<FoodItem>? _foodItems;
  @override
  @JsonKey()
  List<FoodItem>? get foodItems {
    final value = _foodItems;
    if (value == null) return null;
    if (_foodItems is EqualUnmodifiableListView) return _foodItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Category>? _categories;
  @override
  @JsonKey()
  List<Category>? get categories {
    final value = _categories;
    if (value == null) return null;
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final String? errorMessage;

  @override
  String toString() {
    return 'TableFoodSelectionBuildState(showProgressBar: $showProgressBar, foodItems: $foodItems, categories: $categories, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableFoodSelectionBuildStateImpl &&
            (identical(other.showProgressBar, showProgressBar) ||
                other.showProgressBar == showProgressBar) &&
            const DeepCollectionEquality()
                .equals(other._foodItems, _foodItems) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      showProgressBar,
      const DeepCollectionEquality().hash(_foodItems),
      const DeepCollectionEquality().hash(_categories),
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableFoodSelectionBuildStateImplCopyWith<
          _$TableFoodSelectionBuildStateImpl>
      get copyWith => __$$TableFoodSelectionBuildStateImplCopyWithImpl<
          _$TableFoodSelectionBuildStateImpl>(this, _$identity);
}

abstract class _TableFoodSelectionBuildState
    implements TableFoodSelectionBuildState {
  const factory _TableFoodSelectionBuildState(
      {final bool showProgressBar,
      final List<FoodItem>? foodItems,
      final List<Category>? categories,
      final String? errorMessage}) = _$TableFoodSelectionBuildStateImpl;

  @override
  bool get showProgressBar;
  @override
  List<FoodItem>? get foodItems;
  @override
  List<Category>? get categories;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$TableFoodSelectionBuildStateImplCopyWith<
          _$TableFoodSelectionBuildStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
