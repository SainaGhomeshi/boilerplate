import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';

class HomeTabScaffold extends StatelessWidget {
  /// Creates a [HomeViewScaffold].
  ///
  /// This is responsible for delegating [BottomNavigationBar] intents
  /// back to the encapsulating [TabPage] instance.
  ///
  /// Bottom navigation pages/views should be defined separately.
  const HomeTabScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tabState = TabPage.of(context);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: HeroControllerScope(
        controller: MaterialApp.createMaterialHeroController(),
        child: SafeArea(
          child: PageStackNavigator(
            key: ValueKey(tabState.page.paths[tabState.index]),
            stack: tabState.stacks[tabState.index],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => tabState.controller.animateTo(value),
        type: BottomNavigationBarType.fixed,
        currentIndex: tabState.index,
        showUnselectedLabels: true,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const [
          BottomNavigationBarItem(
            icon: CircleAvatar(),
          ),
        ],
      ),
    );
  }
}
