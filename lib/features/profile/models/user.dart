import 'package:json_annotation/json_annotation.dart';

import 'location.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    this.firstName,
    this.gender,
    this.id,
    this.lastName,
    this.location,
    this.picture,
    this.title,
  });
  final String firstName;
  final String gender;
  final String id;
  final String lastName;
  final Location location;
  final String picture;
  final String title;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);

  User copyWith({
    String firstName,
    String gender,
    String id,
    String lastName,
    Location location,
    String picture,
    String title,
  }) {
    return User(
      firstName: firstName ?? this.firstName,
      gender: gender ?? this.gender,
      id: id ?? this.id,
      lastName: lastName ?? this.lastName,
      location: location ?? this.location,
      picture: picture ?? this.picture,
      title: title ?? this.title,
    );
  }
}
