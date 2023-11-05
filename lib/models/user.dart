import 'package:freezed_annotation/freezed_annotation.dart';

part "user.freezed.dart";

part 'user.g.dart';

@Freezed()
class User with _$User {
  const factory User({
    String? userName,
    String? password,
    String? id,
    String? token,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) => _$UserFromJson(json);
}
