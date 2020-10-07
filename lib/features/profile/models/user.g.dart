// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    firstName: json['firstName'] as String,
    gender: json['gender'] as String,
    id: json['id'] as String,
    lastName: json['lastName'] as String,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    picture: json['picture'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'firstName': instance.firstName,
      'gender': instance.gender,
      'id': instance.id,
      'lastName': instance.lastName,
      'location': instance.location,
      'picture': instance.picture,
      'title': instance.title,
    };
