import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/data/repository/courses_repository_implementation.dart';

import 'app_bloc.dart';
import 'config/routes/router.dart';
import 'domain/repository/auth_repository.dart';
import 'domain/repository/courses_repository.dart';

class RussiaCupApp extends StatefulWidget {
  final AuthRepository authRepository;
  final CoursesRepository coursesRepository;
  const RussiaCupApp(
      {super.key,
      required this.authRepository,
      required this.coursesRepository});

  @override
  State<RussiaCupApp> createState() => _RussiaCupAppState();
}

class _RussiaCupAppState extends State<RussiaCupApp> {
  @override
  void initState() {
    super.initState();
    CustomRouter.setupRouter();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: widget.authRepository),
        RepositoryProvider.value(value: widget.coursesRepository)
      ],
      child: BlocProvider(
        create: (_) => AppBloc(authenticationRepository: widget.authRepository),
        child: MaterialApp(
          title: 'Russia Cup App',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            listTileTheme: const ListTileThemeData(
              tileColor: Color.fromRGBO(246, 247, 249, 1),
            ),
            useMaterial3: true,
          ),
          onGenerateRoute: CustomRouter.router.generator,
        ),
      ),
    );
  }
}
