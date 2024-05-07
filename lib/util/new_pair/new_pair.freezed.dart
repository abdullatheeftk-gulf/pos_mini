// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_pair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NewPair<F, S> {
  F get first => throw _privateConstructorUsedError;
  S get second => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewPairCopyWith<F, S, NewPair<F, S>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewPairCopyWith<F, S, $Res> {
  factory $NewPairCopyWith(
          NewPair<F, S> value, $Res Function(NewPair<F, S>) then) =
      _$NewPairCopyWithImpl<F, S, $Res, NewPair<F, S>>;
  @useResult
  $Res call({F first, S second});
}

/// @nodoc
class _$NewPairCopyWithImpl<F, S, $Res, $Val extends NewPair<F, S>>
    implements $NewPairCopyWith<F, S, $Res> {
  _$NewPairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as F,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as S,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewPairImplCopyWith<F, S, $Res>
    implements $NewPairCopyWith<F, S, $Res> {
  factory _$$NewPairImplCopyWith(
          _$NewPairImpl<F, S> value, $Res Function(_$NewPairImpl<F, S>) then) =
      __$$NewPairImplCopyWithImpl<F, S, $Res>;
  @override
  @useResult
  $Res call({F first, S second});
}

/// @nodoc
class __$$NewPairImplCopyWithImpl<F, S, $Res>
    extends _$NewPairCopyWithImpl<F, S, $Res, _$NewPairImpl<F, S>>
    implements _$$NewPairImplCopyWith<F, S, $Res> {
  __$$NewPairImplCopyWithImpl(
      _$NewPairImpl<F, S> _value, $Res Function(_$NewPairImpl<F, S>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_$NewPairImpl<F, S>(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as F,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as S,
    ));
  }
}

/// @nodoc

class _$NewPairImpl<F, S> implements _NewPair<F, S> {
  const _$NewPairImpl({required this.first, required this.second});

  @override
  final F first;
  @override
  final S second;

  @override
  String toString() {
    return 'NewPair<$F, $S>(first: $first, second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewPairImpl<F, S> &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.second, second));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(second));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewPairImplCopyWith<F, S, _$NewPairImpl<F, S>> get copyWith =>
      __$$NewPairImplCopyWithImpl<F, S, _$NewPairImpl<F, S>>(this, _$identity);
}

abstract class _NewPair<F, S> implements NewPair<F, S> {
  const factory _NewPair({required final F first, required final S second}) =
      _$NewPairImpl<F, S>;

  @override
  F get first;
  @override
  S get second;
  @override
  @JsonKey(ignore: true)
  _$$NewPairImplCopyWith<F, S, _$NewPairImpl<F, S>> get copyWith =>
      throw _privateConstructorUsedError;
}
