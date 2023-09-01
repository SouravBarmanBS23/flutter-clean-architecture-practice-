import 'package:flutter/cupertino.dart';
import 'package:flutter_clean_architecture/core/router/router_names.dart';
import 'package:flutter_clean_architecture/test_folder/pages/dashboard_page.dart';
import 'package:flutter_clean_architecture/test_folder/pages/page_one.dart';
import 'package:flutter_clean_architecture/test_folder/pages/page_three.dart';
import 'package:flutter_clean_architecture/test_folder/pages/page_two.dart';
import 'package:flutter_clean_architecture/test_folder/pages/profile_page.dart';
import 'package:go_router/go_router.dart';

class RouterConfiguration {
  GoRouter get getRoutes => _goRouter;

  final GoRouter _goRouter = GoRouter(initialLocation: '/profile', routes: [
    GoRoute(
        name: RouteNames.profilePage,
        path: '/profile',
        builder: ((BuildContext context, GoRouterState state) {
          final search = state.uri.queryParameters['greetings'];
          return ProfilePage(greet: search);
        }),
        routes: <RouteBase>[
          GoRoute(
              name: RouteNames.pageThree,
              path: 'three/:id',
              builder: ((BuildContext context, GoRouterState state) {
                final id = state.pathParameters["id"]!;
                return PageThree(id: id);
              })),
        ]),
    GoRoute(
        name: RouteNames.pageTwo,
        path: '/two',
        builder: ((BuildContext context, GoRouterState state) =>
             PageTwo(key: state.pageKey,))),
    GoRoute(
        name: RouteNames.dashboardPage,
        path: '/dashboard',
        builder: ((BuildContext context, GoRouterState state) {
          return const DashBoardPage();
        })),
  ]);
}
