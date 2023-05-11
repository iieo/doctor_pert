import 'package:doctor_pert/screens/home_screen/home_screen.dart';
import 'package:doctor_pert/screens/shells/shell_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'change_notifier.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();
final _shellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  initialLocation: "/",
  navigatorKey: _rootNavigatorKey,
  redirect: (context, state) {
    // TODO
    return null;
  },
  refreshListenable:
      GoRouterRefreshStream(FirebaseAuth.instance.authStateChanges()),
  errorBuilder: (context, state) => const NotFoundScreen(),
  routes: <RouteBase>[
    /*GoRoute(
      path: '/login',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
            child: AuthScreen(child: LoginContainer()));
      },
    ),
    GoRoute(
      path: '/signup',
      pageBuilder: (BuildContext context, GoRouterState state) {
        return const NoTransitionPage(
            child: AuthScreen(child: SignUpContainer()));
      },
    )*/
    ShellRoute(
        navigatorKey: _shellNavigatorKey,
        pageBuilder: (context, state, child) {
          return NoTransitionPage(
              child: ShellNavBar(
            child: child,
          ));
        },
        routes: [
          GoRoute(
            parentNavigatorKey: _shellNavigatorKey,
            path: "/",
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: HomeScreen()),
          ),
        ])
  ],
);

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Text(
          '404 Not Found',
          style: Theme.of(context).textTheme.labelLarge,
        ),
      ),
    );
  }
}
