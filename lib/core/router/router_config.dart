import 'package:flutter_clean_architecture/test_folder/pages/page_one.dart';
import 'package:flutter_clean_architecture/test_folder/pages/page_three.dart';
import 'package:flutter_clean_architecture/test_folder/pages/page_two.dart';
import 'package:go_router/go_router.dart';

class RouterConfiguration {
  GoRouter get getRoutes => _goRouter;

  final GoRouter _goRouter = GoRouter(initialLocation: '/one', routes: [
    GoRoute( name: 'pageOne',path: '/one', builder: ((context, state) => const PageOne()), routes: <RouteBase>[
      GoRoute(name: 'PageThree',path: 'three', builder: ((context, state) => const PageThree())),
    ]),
    GoRoute(name: 'PageTwo',path: '/two', builder: ((context, state) => const PageTwo())),
  ]);
}
