// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Users _$UsersFromJson(Map<String, dynamic> json) {
  return Users(
    users: (json['data'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    total: json['total'] as int,
    page: json['page'] as int,
    limit: json['limit'] as int,
    offset: json['offset'] as int,
  );
}

Map<String, dynamic> _$UsersToJson(Users instance) => <String, dynamic>{
      'data': instance.users,
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
      'offset': instance.offset,
    };
