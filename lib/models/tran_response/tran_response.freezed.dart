// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tran_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TranResponse _$TranResponseFromJson(Map<String, dynamic> json) {
  return _TranResponse.fromJson(json);
}

/// @nodoc
mixin _$TranResponse {
  String get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TranResponseCopyWith<TranResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TranResponseCopyWith<$Res> {
  factory $TranResponseCopyWith(
          TranResponse value, $Res Function(TranResponse) then) =
      _$TranResponseCopyWithImpl<$Res, TranResponse>;
  @useResult
  $Res call({String results});
}

/// @nodoc
class _$TranResponseCopyWithImpl<$Res, $Val extends TranResponse>
    implements $TranResponseCopyWith<$Res> {
  _$TranResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TranResponseImplCopyWith<$Res>
    implements $TranResponseCopyWith<$Res> {
  factory _$$TranResponseImplCopyWith(
          _$TranResponseImpl value, $Res Function(_$TranResponseImpl) then) =
      __$$TranResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String results});
}

/// @nodoc
class __$$TranResponseImplCopyWithImpl<$Res>
    extends _$TranResponseCopyWithImpl<$Res, _$TranResponseImpl>
    implements _$$TranResponseImplCopyWith<$Res> {
  __$$TranResponseImplCopyWithImpl(
      _$TranResponseImpl _value, $Res Function(_$TranResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
  }) {
    return _then(_$TranResponseImpl(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TranResponseImpl implements _TranResponse {
  const _$TranResponseImpl({required this.results});

  factory _$TranResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TranResponseImplFromJson(json);

  @override
  final String results;

  @override
  String toString() {
    return 'TranResponse(results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TranResponseImpl &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TranResponseImplCopyWith<_$TranResponseImpl> get copyWith =>
      __$$TranResponseImplCopyWithImpl<_$TranResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TranResponseImplToJson(
      this,
    );
  }
}

abstract class _TranResponse implements TranResponse {
  const factory _TranResponse({required final String results}) =
      _$TranResponseImpl;

  factory _TranResponse.fromJson(Map<String, dynamic> json) =
      _$TranResponseImpl.fromJson;

  @override
  String get results;
  @override
  @JsonKey(ignore: true)
  _$$TranResponseImplCopyWith<_$TranResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
