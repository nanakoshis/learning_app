import 'package:flutter/material.dart';
import 'package:practice_app/exclusive/routing/go_router/can_not_pop_router.dart';
import 'package:practice_app/exclusive/routing/go_router/can_pop_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      // canNotPopRouterで使用
      // routerConfig: canNotPopRouter,

      // canPopRouterで使用
      routerConfig: canPopRouter,
    )
  );
}