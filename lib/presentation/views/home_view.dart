import 'package:boilerplate/core/constants/home.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  static const keyPrefix = 'HomeView';
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          HomeConsts.sampleText,
          ),
      ),
    );
    // final homeBloc = BlocProvider.of<HomeBloc>(context);
    // return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
    //   if (state is HomeLoadSuccess) {
    //     return SafeArea(
    //       bottom: false,
    //       child: Scaffold(
    //       ),
    //     );
    //   } else if (state is HomeLoadFailure) {
    //     return Scaffold(
    //       body: ErrorCardWidget(
    //         key: const Key('$keyPrefix-ErrorCardWidget'),
    //         message: state.message,
    //       ),
    //     );
    //   } else {
    //     return const Scaffold(
    //       body: SizedBox.shrink(),
    //     );
    //   }
    // });
  }
}
