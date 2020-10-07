import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  const Location({
    this.street,
    this.city,
    this.state,
    this.country,
    this.timezone,
  });
  final String street;
  final String city;
  final String state;
  final String country;
  final String timezone;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
