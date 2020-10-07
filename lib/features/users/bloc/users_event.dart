part of 'users_bloc.dart';

@freezed
abstract class UsersEvent with _$UsersEvent {
  const factory UsersEvent.fetchUsers(int limit) = _FetchUsers;
}