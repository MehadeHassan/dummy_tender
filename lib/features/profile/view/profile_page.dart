import 'package:dummy_tender/features/profile/profile.dart';
import 'package:dummyapi_repository/dummyapi_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileViewModelPage extends StatelessWidget {
  const ProfileViewModelPage._({Key key, this.firstName}) : super(key: key);

  final String firstName;

  static Route route(String userId, String firstName) {
    return MaterialPageRoute(
      builder: (_) => BlocProvider(
        create: (context) =>
            ProfileBloc(context.repository<DummyAPIRepository>())
              ..add(
                ProfileEvent.fetchProfile(userId),
              ),
        child: ProfileViewModelPage._(
          firstName: firstName,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(firstName),
      ),
      body: Center(
        child: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Text('initail '),
              loadInProgress: () => const CircularProgressIndicator(),
              loadSuccess: (user) => Text(user.title),
              loadFailure: () => const Text('error'),
            );
          },
        ),
      ),
    );
  }
}
