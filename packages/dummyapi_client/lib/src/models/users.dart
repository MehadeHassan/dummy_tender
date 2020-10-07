import 'package:json_annotation/json_annotation.dart';

import 'models.dart';

part 'users.g.dart';

@JsonSerializable()
class Users {
  const Users({
    this.users,
    this.total,
    this.page,
    this.limit,
    this.offset,
  });

  @JsonKey(name: 'data')
  final List<User> users;
  final int total;
  final int page;
  final int limit;
  final int offset;

  factory Users.fromJson(Map<String, dynamic> json) => _$UsersFromJson(json);
  Map<String, dynamic> toJson() => _$UsersToJson(this);
}
