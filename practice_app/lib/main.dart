import 'package:flutter/material.dart';

import 'view/first_screen.dart';
import 'view/my_home_pege.dart';
import 'view/test_screen.dart';

void main() {
  runApp(const MyApp());
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
      },
    );
  }
}