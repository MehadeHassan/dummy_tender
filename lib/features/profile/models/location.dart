import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  const Location({
    this.city,
    this.country,
    this.state,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  final String city;
  final String country;
  final String state;

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
