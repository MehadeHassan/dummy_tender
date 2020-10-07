import 'package:dummy_tender/features/profile/profile.dart';
import 'package:dummy_tender/features/users/models/models.dart';
import 'package:dummy_tender/features/users/users.dart';
import 'package:dummyapi_repository/dummyapi_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersViewModelPage extends StatelessWidget {
  const UsersViewModelPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (context) => UsersBloc(
          context.repository<DummyAPIRepository>(),
        )..add(const UsersEvent.fetchUsers(10)),
        child: const UserListView(),
      ),
    );
  }
}

class UserListView extends StatelessWidget {
  const UserListView({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersBloc, UsersState>(
      builder: (context, state) {
        return state.when(
          initial: () => const Text('Initial state'),
          loadFailure: () => const Text('Some error happpend'),
          loadInProgress: () => const CircularProgressIndicator(),
          loadSuccess: (List<User> users) {
            return ListView.builder(
              padding: const EdgeInsets.all(8),
              physics: const BouncingScrollPhysics(),
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                final user = users[index];
                return GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    ProfileViewModelPage.route(user.id, user.firstName),
                  ),
                  child: ListTile(
                    title: Text(user.firstName),
                    leading: CircleAvatar(
                      child: Text(user.title),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }
}
