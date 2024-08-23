import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_router_package/views/home_view.dart';
import 'package:go_router_package/views/home_view_inside.dart';
import 'package:go_router_package/views/navigation_bar_view.dart';
import 'package:go_router_package/views/second_view.dart';
import 'package:go_router_package/views/second_view_inside.dart';

class AppNavigation {
  AppNavigation._();

  static const initialRoute = '/';
  static final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  static final GlobalKey<NavigatorState> _shellNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'home');
  static final GlobalKey<NavigatorState> _shellNavigatorSecond =
      GlobalKey<NavigatorState>(debugLabel: 'second');

  static final router = GoRouter(
    initialLocation: initialRoute,
    navigatorKey: _rootNavigatorKey,
    routes: [
      StatefulShellRoute.indexedStack(
          builder: (context, state, statefulNavigationShell) {
            return NavigationBarView(
                statefulNavigationShell: statefulNavigationShell);
          },
          branches: [
            StatefulShellBranch(
              initialLocation: '/',
              routes: [
                GoRoute(
                    name: 'home',
                    path: '/',
                    builder: (context, state) {
                      return HomeView();
                    },
                    routes: [
                      GoRoute(
                        name: 'homeInside',
                        path: "homeInside/:id/:name",
                        builder: (context, state) => HomeViewInside(
                          id: int.parse(state.pathParameters['id']!),
                          name: state.pathParameters['name']!,
                        ),
                      ),
                    ]),
              ],
            ),
            StatefulShellBranch(initialLocation: '/second', routes: [
              GoRoute(
                  name: 'second',
                  path: '/second',
                  builder: (context, state) {
                    return const SecondView();
                  },
                  routes: [
                    GoRoute(
                      name: 'secondInside',
                      path: "secondInside",
                      builder: (context, state) => SecondViewInside(),
                    )
                  ]),
            ]),
          ]),
    ],
  );
}
