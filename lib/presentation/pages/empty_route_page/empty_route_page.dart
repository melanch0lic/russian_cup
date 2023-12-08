import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:russia_icpc/presentation/pages/tabs_page/tabs_page.dart';

import '../../../app_bloc.dart';
import '../../../app_state.dart';
import '../login_page/login_page.dart';

class EmptyRoutePage extends StatelessWidget {
  const EmptyRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(builder: (context, state) {
      if (state.status == AppStatus.authenticated) {
        return const TabsPage();
      } else {
        return const LoginPage();
      }
    });
  }
}
