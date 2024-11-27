import 'package:go_router/go_router.dart';
import 'package:practice_app/exclusive/routing/go_router/go_router_screen.dart';

final canNotPopRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GoRouterFirstScreen(),
    ),
    GoRoute(
      path: '/GoRouterSecondScreen',
      builder: (context, state) => const GoRouterSecondScreen(),
    ),
    GoRoute(
      path: '/GoRouterThirdScreen',
      builder: (context, state) => const GoRouterThirdScreen(),
    ),
  ]
);