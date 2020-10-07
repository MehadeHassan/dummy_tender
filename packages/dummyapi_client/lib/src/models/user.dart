import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.email,
    this.picture,
  });
  final String id;
  final String title;
  final String firstName;
  final String lastName;
  final String email;
  final String picture;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
