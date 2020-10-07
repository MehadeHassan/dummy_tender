import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class User extends Equatable {
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

  @override
  List<Object> get props => [
        id,
        title,
        firstName,
        lastName,
        email,
        picture,
      ];

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'picture': picture,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return User(
      id: map['id'],
      title: map['title'],
      firstName: map['firstName'],
      lastName: map['lastName'],
      email: map['email'],
      picture: map['picture'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));
}
