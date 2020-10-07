import 'package:dummy_tender/features/users/view/view.dart';
import 'package:dummyapi_repository/dummyapi_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    Key key,
    @required DummyAPIRepository repository,
  })  : _repository = repository,
        super(key: key);
  final DummyAPIRepository _repository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<DummyAPIRepository>.value(
      value: _repository,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'DummyTender',
        theme: ThemeData(brightness: Brightness.dark),
        home: const UsersViewModelPage(),
      ),
    );
  }
}
