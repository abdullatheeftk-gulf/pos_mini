import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User{
  const factory User({
    @Default(0) int userId,
    required String userPassword,
    @Default(null) String? userName,
})=_user;


  factory User.fromJson(Map<String,dynamic> json) => _$UserFromJson(json);

}