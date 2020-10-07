import 'package:dummyapi_client/src/models/location.dart';
import 'package:json_annotation/json_annotation.dart';

part 'profile.g.dart';

@JsonSerializable()
class Profile {
  const Profile({
    this.id,
    this.title,
    this.firstName,
    this.lastName,
    this.gender,
    this.email,
    this.dateOfBrith,
    this.registerDate,
    this.phone,
    this.picture,
    this.location,
  });
  final String id;
  final String title;
  final String firstName;
  final String lastName;
  final String gender;
  final String email;
  final String dateOfBrith;
  final String registerDate;
  final String phone;
  final String picture;
  final Location location;

  factory Profile.fromJson(Map<String, dynamic> json) =>
      _$ProfileFromJson(json);
  Map<String, dynamic> toJson() => _$ProfileToJson(this);
}
