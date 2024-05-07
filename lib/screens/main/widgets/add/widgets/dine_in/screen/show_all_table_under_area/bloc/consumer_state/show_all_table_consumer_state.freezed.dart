// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'show_all_table_consumer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ShowAllTableConsumerState {
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get navigate => throw _privateConstructorUsedError;
  ShowDialog<dynamic>? get showDialog => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShowAllTableConsumerStateCopyWith<ShowAllTableConsumerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowAllTableConsumerStateCopyWith<$Res> {
  factory $ShowAllTableConsumerStateCopyWith(ShowAllTableConsumerState value,
          $Res Function(ShowAllTableConsumerState) then) =
      _$ShowAllTableConsumerStateCopyWithImpl<$Res, ShowAllTableConsumerState>;
  @useResult
  $Res call(
      {String? errorMessage,
      String? navigate,
      ShowDialog<dynamic>? showDialog});

  $ShowDialogCopyWith<dynamic, $Res>? get showDialog;
}

/// @nodoc
class _$ShowAllTableConsumerStateCopyWithImpl<$Res,
        $Val extends ShowAllTableConsumerState>
    implements $ShowAllTableConsumerStateCopyWith<$Res> {
  _$ShowAllTableConsumerStateCopyWithImpl(this._value, this._then);

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
              as ShowDialog<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShowDialogCopyWith<dynamic, $Res>? get showDialog {
    if (_value.showDialog == null) {
      return null;
    }

    return $ShowDialogCopyWith<dynamic, $Res>(_value.showDialog!, (value) {
      return _then(_value.copyWith(showDialog: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ShowAllTableConsumerStateImplCopyWith<$Res>
    implements $ShowAllTableConsumerStateCopyWith<$Res> {
  factory _$$ShowAllTableConsumerStateImplCopyWith(
          _$ShowAllTableConsumerStateImpl value,
          $Res Function(_$ShowAllTableConsumerStateImpl) then) =
      __$$ShowAllTableConsumerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? errorMessage,
      String? navigate,
      ShowDialog<dynamic>? showDialog});

  @override
  $ShowDialogCopyWith<dynamic, $Res>? get showDialog;
}

/// @nodoc
class __$$ShowAllTableConsumerStateImplCopyWithImpl<$Res>
    extends _$ShowAllTableConsumerStateCopyWithImpl<$Res,
        _$ShowAllTableConsumerStateImpl>
    implements _$$ShowAllTableConsumerStateImplCopyWith<$Res> {
  __$$ShowAllTableConsumerStateImplCopyWithImpl(
      _$ShowAllTableConsumerStateImpl _value,
      $Res Function(_$ShowAllTableConsumerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = freezed,
    Object? navigate = freezed,
    Object? showDialog = freezed,
  }) {
    return _then(_$ShowAllTableConsumerStateImpl(
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
              as ShowDialog<dynamic>?,
    ));
  }
}

/// @nodoc

class _$ShowAllTableConsumerStateImpl implements _ShowAllTableConsumerState {
  const _$ShowAllTableConsumerStateImpl(
      {this.errorMessage = null, this.navigate = null, this.showDialog = null});

  @override
  @JsonKey()
  final String? errorMessage;
  @override
  @JsonKey()
  final String? navigate;
  @override
  @JsonKey()
  final ShowDialog<dynamic>? showDialog;

  @override
  String toString() {
    return 'ShowAllTableConsumerState(errorMessage: $errorMessage, navigate: $navigate, showDialog: $showDialog)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowAllTableConsumerStateImpl &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.navigate, navigate) ||
                other.navigate == navigate) &&
            (identical(other.showDialog, showDialog) ||
                other.showDialog == showDialog));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, errorMessage, navigate, showDialog);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowAllTableConsumerStateImplCopyWith<_$ShowAllTableConsumerStateImpl>
      get copyWith => __$$ShowAllTableConsumerStateImplCopyWithImpl<
          _$ShowAllTableConsumerStateImpl>(this, _$identity);
}

abstract class _ShowAllTableConsumerState implements ShowAllTableConsumerState {
  const factory _ShowAllTableConsumerState(
      {final String? errorMessage,
      final String? navigate,
      final ShowDialog<dynamic>? showDialog}) = _$ShowAllTableConsumerStateImpl;

  @override
  String? get errorMessage;
  @override
  String? get navigate;
  @override
  ShowDialog<dynamic>? get showDialog;
  @override
  @JsonKey(ignore: true)
  _$$ShowAllTableConsumerStateImplCopyWith<_$ShowAllTableConsumerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
