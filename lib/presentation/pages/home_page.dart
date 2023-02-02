import 'package:boilerplate/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class HomePage extends Page<void> {
  const HomePage() : super();
  @override
  Route<void> createRoute(BuildContext context) {
    return MaterialPageRoute(
      settings: this,
      builder: (context) =>
          //  BlocProvider<HomeBloc>(
          //   create: (context) => HomeBloc()
          //     ..add(
          //       const HomeContentLoad(),
          //     ),
          //   child: const
          const HomeView(),
    );
  }
}
