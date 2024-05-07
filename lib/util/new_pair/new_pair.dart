import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_pair.freezed.dart';

@freezed
class NewPair<F,S> with _$NewPair{
  const factory NewPair({
    required F first,
    required S second,
}) = _NewPair;
}