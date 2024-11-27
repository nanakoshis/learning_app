import 'package:go_router/go_router.dart';
import 'package:practice_app/exclusive/routing/go_router/go_router_screen.dart';

final canPopRouter = GoRouter(
  routes: [
    GoRoute(
      path: GoRouterFirstScreen.routePath,
      builder: (context, state) => const GoRouterFirstScreen(),
      routes: [
        GoRoute(
          path: GoRouterSecondScreen.routePath,
          builder: (context, state) => const GoRouterSecondScreen(),
          routes: [
             GoRoute(
              path: GoRouterThirdScreen.routePath,
              builder: (context, state) => const GoRouterThirdScreen(),
            ),
          ]
        ),
      ]
    ),
  ]
);