// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return Profile(
    id: json['id'] as String,
    title: json['title'] as String,
    firstName: json['firstName'] as String,
    lastName: json['lastName'] as String,
    gender: json['gender'] as String,
    email: json['email'] as String,
    dateOfBrith: json['dateOfBrith'] as String,
    registerDate: json['registerDate'] as String,
    phone: json['phone'] as String,
    picture: json['picture'] as String,
    location: json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ProfileToJson(Profile instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'email': instance.email,
      'dateOfBrith': instance.dateOfBrith,
      'registerDate': instance.registerDate,
      'phone': instance.phone,
      'picture': instance.picture,
      'location': instance.location,
    };
