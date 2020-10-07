import 'package:bloc/bloc.dart';
import 'package:dummy_tender/features/profile/models/models.dart';
import 'package:dummyapi_repository/dummyapi_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.dart';
part 'profile_event.dart';
part 'profile_bloc.freezed.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc(DummyAPIRepository repository)
      : assert(repository != null),
        _repository = repository,
        super(const _Initial());

  final DummyAPIRepository _repository;

  @override
  Stream<ProfileState> mapEventToState(ProfileEvent gEvent) async* {
    yield* gEvent.map(
      fetchProfile: (event) => _fetchProfileToState(event),
    );
  }

  Stream<ProfileState> _fetchProfileToState(_FetchProfile event) async* {
    yield const _LoadInProgress();
    final fetchedUser = await _repository.fetchProfile(event.userId);

    final a = fetchedUser.toJson().forEach((key, value) {});
  }
}
