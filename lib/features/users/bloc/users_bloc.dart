import 'package:bloc/bloc.dart';
import 'package:dummy_tender/features/users/models/user.dart';
import 'package:dummyapi_repository/dummyapi_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_state.dart';
part 'users_event.dart';
part 'users_bloc.freezed.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  UsersBloc(DummyAPIRepository repository)
      : assert(repository != null),
        _repository = repository,
        super(const _Initial());

  final DummyAPIRepository _repository;

  @override
  Stream<UsersState> mapEventToState(UsersEvent gEvent) async* {
    yield* gEvent.map(
      fetchUsers: (event) => _fetchUsersToState(event),
    );
  }

  Stream<UsersState> _fetchUsersToState(_FetchUsers event) async* {
    yield const _LoadInProgress();

    final fachedUsers = await _repository.fetchUsers();

    final users = fachedUsers.map((e) => User.fromMap(e.toJson())).toList();

    yield _LoadSuccess(users);
  }
}
