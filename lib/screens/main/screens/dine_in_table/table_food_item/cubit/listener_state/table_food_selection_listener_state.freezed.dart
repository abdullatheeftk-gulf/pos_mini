// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_food_selection_listener_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TableFoodSelectionListenerState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get navigate => throw _privateConstructorUsedError;
  String? get showDialog => throw _privateConstructorUsedError;
  TableFoodAddDialog? get tableFoodAddDialog =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TableFoodSelectionListenerStateCopyWith<TableFoodSelectionListenerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableFoodSelectionListenerStateCopyWith<$Res> {
  factory $TableFoodSelectionListenerStateCopyWith(
          TableFoodSelectionListenerState value,
          $Res Function(TableFoodSelectionListenerState) then) =
      _$TableFoodSelectionListenerStateCopyWithImpl<$Res,
          TableFoodSelectionListenerState>;
  @useResult
  $Res call(
      {String? errorMessage,
      String? navigate,
      String? showDialog,
      TableFoodAddDialog? tableFoodAddDialog});

  $TableFoodAddDialogCopyWith<$Res>? get tableFoodAddDialog;
}

/// @nodoc
class _$TableFoodSelectionListenerStateCopyWithImpl<$Res,
        $Val extends TableFoodSelectionListenerState>
    implements $TableFoodSelectionListenerStateCopyWith<$Res> {
  _$TableFoodSelectionListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? navigate = freezed,
    Object? showDialog = freezed,
    Object? tableFoodAddDialog = freezed,
  }) {
    return _then(_value.copyWith(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as String?,
      tableFoodAddDialog: freezed == tableFoodAddDialog
          ? _value.tableFoodAddDialog
          : tableFoodAddDialog // ignore: cast_nullable_to_non_nullable
              as TableFoodAddDialog?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TableFoodAddDialogCopyWith<$Res>? get tableFoodAddDialog {
    if (_value.tableFoodAddDialog == null) {
      return null;
    }

    return $TableFoodAddDialogCopyWith<$Res>(_value.tableFoodAddDialog!,
        (value) {
      return _then(_value.copyWith(tableFoodAddDialog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TableFoodSelectionListenerStateImplCopyWith<$Res>
    implements $TableFoodSelectionListenerStateCopyWith<$Res> {
  factory _$$TableFoodSelectionListenerStateImplCopyWith(
          _$TableFoodSelectionListenerStateImpl value,
          $Res Function(_$TableFoodSelectionListenerStateImpl) then) =
      __$$TableFoodSelectionListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      String? navigate,
      String? showDialog,
      TableFoodAddDialog? tableFoodAddDialog});

  @override
  $TableFoodAddDialogCopyWith<$Res>? get tableFoodAddDialog;
}

/// @nodoc
class __$$TableFoodSelectionListenerStateImplCopyWithImpl<$Res>
    extends _$TableFoodSelectionListenerStateCopyWithImpl<$Res,
        _$TableFoodSelectionListenerStateImpl>
    implements _$$TableFoodSelectionListenerStateImplCopyWith<$Res> {
  __$$TableFoodSelectionListenerStateImplCopyWithImpl(
      _$TableFoodSelectionListenerStateImpl _value,
      $Res Function(_$TableFoodSelectionListenerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? navigate = freezed,
    Object? showDialog = freezed,
    Object? tableFoodAddDialog = freezed,
  }) {
    return _then(_$TableFoodSelectionListenerStateImpl(
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      navigate: freezed == navigate
          ? _value.navigate
          : navigate // ignore: cast_nullable_to_non_nullable
              as String?,
      showDialog: freezed == showDialog
          ? _value.showDialog
          : showDialog // ignore: cast_nullable_to_non_nullable
              as String?,
      tableFoodAddDialog: freezed == tableFoodAddDialog
          ? _value.tableFoodAddDialog
          : tableFoodAddDialog // ignore: cast_nullable_to_non_nullable
              as TableFoodAddDialog?,
    ));
  }
}

/// @nodoc

class _$TableFoodSelectionListenerStateImpl
    implements _TableFoodSelectionListenerState {
  _$TableFoodSelectionListenerStateImpl(
      {this.errorMessage = null,
      this.navigate = null,
      this.showDialog = null,
      this.tableFoodAddDialog = null});

  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final String? navigate;
  @override
  @JsonKey()
  final String? showDialog;
  @override
  @JsonKey()
  final TableFoodAddDialog? tableFoodAddDialog;

  @override
  String toString() {
    return 'TableFoodSelectionListenerState(errorMessage: $errorMessage, navigate: $navigate, showDialog: $showDialog, tableFoodAddDialog: $tableFoodAddDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableFoodSelectionListenerStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate) &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog) &&
            (identical(other.tableFoodAddDialog, tableFoodAddDialog) ||
                other.tableFoodAddDialog == tableFoodAddDialog));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, errorMessage, navigate, showDialog, tableFoodAddDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableFoodSelectionListenerStateImplCopyWith<
          _$TableFoodSelectionListenerStateImpl>
      get copyWith => __$$TableFoodSelectionListenerStateImplCopyWithImpl<
          _$TableFoodSelectionListenerStateImpl>(this, _$identity);
}

abstract class _TableFoodSelectionListenerState
    implements TableFoodSelectionListenerState {
  factory _TableFoodSelectionListenerState(
          {final String? errorMessage,
          final String? navigate,
          final String? showDialog,
          final TableFoodAddDialog? tableFoodAddDialog}) =
      _$TableFoodSelectionListenerStateImpl;

  @override
  String? get errorMessage;
  @override
  String? get navigate;
  @override
  String? get showDialog;
  @override
  TableFoodAddDialog? get tableFoodAddDialog;
  @override
  @JsonKey(ignore: true)
  _$$TableFoodSelectionListenerStateImplCopyWith<
          _$TableFoodSelectionListenerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
