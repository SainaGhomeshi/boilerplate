import 'package:boilerplate/presentation/pages/home_page.dart';
import 'package:boilerplate/presentation/views/home_tab_scaffold.dart';
import 'package:routemaster/routemaster.dart';

/// Defines the base routing paths within the app.
///
/// Should generally be limited to the root pages of each [RouteMap].
class InitialPageRoutes {
  static const root = '/';
  static const notFound = '/404';
  static const loading = '/loading';

  // logged-in routes
  static const home = '/home';

  // init, onboarding, and home
  static const welcome = '/welcome';
  static const onboarding = '/onboarding';
  static const splash = '/splash';
}

/// Defines the available page route names.
///
/// Valid paths should be declared within the relevant [PageRoutes] value.
/// When [Routemaster.push] is invoked with a [RelativePageRoute], it
/// will be treated as a relative path to the current path, and push the
/// page on top.
///
/// Pushing a page with a leading `/` implies an absolute path, so this
/// will replace the current navigation stack with the new route path.
///
/// See [Routemaster.push] for more information.
class RelativePageRoutes {
  static const splashPage = 'splashPage';
  static const welcomePage = 'welcomePage';
}

class PageRoutes {
  static final onboarding = RouteMap(
    routes: {InitialPageRoutes.onboarding: (routeData) => const HomePage()},
    // `/onboardingChat/bedTimeMeditation
    // '${InitialPageRoutes.onboarding}/${RelativePageRoutes.test}':
    //     (routeData) {
    //   return TestPage(
    //   );
    // },
    onUnknownRoute: (path) => const Redirect(InitialPageRoutes.onboarding),
  );

  static final splashScreen = RouteMap(
    routes: {
      InitialPageRoutes.splash: (routeData) => const HomePage(),
    },
    onUnknownRoute: (path) => const Redirect(InitialPageRoutes.splash),
  );

  static final welcomeScreen = RouteMap(
    routes: {
      InitialPageRoutes.welcome: (routeData) => const HomePage(),
    },
    onUnknownRoute: (path) => const Redirect(InitialPageRoutes.welcome),
  );

  /// Defines the primary routing map for a logged-in user.
  static final loggedIn = RouteMap(routes: {
    InitialPageRoutes.root: (routeData) => const TabPage(
          child: HomeTabScaffold(),
          //! Be mindful of ordering, must match expected bottom nav order
          paths: [
            InitialPageRoutes.home,
          ],
        ),
    // Tab paths
    InitialPageRoutes.home: (routeData) => const HomePage(),
  });
}
