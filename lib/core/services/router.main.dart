part of 'router.dart';

final router = GoRouter(
  navigatorKey: GlobalKey<NavigatorState>(),
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', redirect: (_, __) => OverviewPage.path),
    ShellRoute(
      navigatorKey: GlobalKey<NavigatorState>(),
      builder: (context, state, child) {
        // The delay prevents the error
        // setState or markedNeedsBuild called during build
        Future.delayed(
          Duration.zero,
          () => context.read<NavRailController>().goTo(state.fullPath!.tab),
        );
        return SiteLayout(child: child);
      },
      routes: [
        GoRoute(
          path: OverviewPage.path,
          pageBuilder: (_, state) => _pageBuilder(
            const OverviewPage(),
            state: state,
          ),
        ),
        GoRoute(
          path: DriversPage.path,
          pageBuilder: (_, state) => _pageBuilder(
            const DriversPage(),
            state: state,
          ),
        ),
        GoRoute(
          path: ClientsPage.path,
          pageBuilder: (_, state) => _pageBuilder(
            const ClientsPage(),
            state: state,
          ),
        ),
        GoRoute(
          path: '/authentication',
          builder: (context, state) => Scaffold(
            body: Center(
              child: ElevatedButton(
                onPressed: () => context.go(
                  Uri(
                    path: '/authentication/hello',
                    queryParameters: {'id': '123'},
                  ).toString(),
                ),
                child: const Text('Go'),
              ),
            ),
          ),
          routes: [
            GoRoute(
              path: 'hello/?id=',
              builder: (_, state) => Scaffold(
                body: Center(child: Text(state.fullPath!)),
              ),
            ),
          ],
        ),
      ],
    ),
  ],
);

Page<dynamic> _pageBuilder(Widget page, {required GoRouterState state}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: page,
    transitionsBuilder: (_, animation, __, child) => FadeTransition(
      opacity: CurveTween(curve: Curves.easeInOutCirc).animate(animation),
      child: child,
    ),
  );
}
