import 'package:dummyapi_repository/dummyapi_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';
import 'bloc_observer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  runApp(
    MyApp(
      repository: DummyAPIRepository(),
    ),
  );
}
