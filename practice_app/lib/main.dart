import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_app/view/api_screen.dart';

import 'view/first_screen.dart';
import 'view/my_home_pege.dart';
import 'view/test_screen.dart';
import 'view/url_launcher_screen.dart';

void main() {
  runApp(
    // Riverpodを使用するためにProviderScopeを追加
    const ProviderScope(
      child: MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp Googleの標準デザイン（マテリアルデザイン）の雛形を設定（テーマカラーなど）
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const FirstScreen(),
        '/MyHomePage': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/TestScreen': (context) => const TestScreen(),
        '/ApiScreen': (context) => const ApiScreen(),
        '/UrlLauncherScreen': (context) => const UrlLauncherScreen(),
      },
    );
  }
}