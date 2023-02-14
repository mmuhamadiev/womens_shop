import 'package:flutter/material.dart';
import 'package:womens_shop/business/bloc/bloc_state_manager_bloc.dart';
import 'package:womens_shop/presentation/constraints/constraints.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'business/navigation_router/go_router.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouters router = GoRouters();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => StateManagerBloc(),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: true,

          primarySwatch: primaryColor,
        ),
        routerConfig: router.router,
      ),
    );
  }
}
