part of 'users_bloc.dart';

@freezed
abstract class UsersState with _$UsersState {
  const factory UsersState.initial() = _Initial;
  const factory UsersState.loadInProgress() = _LoadInProgress;
  const factory UsersState.loadSuccess(List<User> users) = _LoadSuccess;
  const factory UsersState.loadFailure() = _LoadFailure;
}
