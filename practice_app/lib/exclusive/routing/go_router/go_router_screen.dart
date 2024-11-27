import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoRouterFirstScreen extends StatelessWidget {
  const GoRouterFirstScreen({super.key});

  // 本画面のルートパス
  static const routePath = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スクリーン1'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // canNotPopRouterで使用
                // GoRouter.of(context).go('/GoRouterSecondScreen');

                // canPopRouterで使用
                GoRouter.of(context).go('${GoRouterFirstScreen.routePath}${GoRouterSecondScreen.routePath}');
              },
              child: const Text('スクリーン1からスクリーン2へ'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // canNotPopRouterで使用
                // GoRouter.of(context).go('/GoRouterSecondScreen/GoRouterThirdScreen');

                // canPopRouterで使用
                GoRouter.of(context).go('${GoRouterFirstScreen.routePath}${GoRouterSecondScreen.routePath}/${GoRouterThirdScreen.routePath}');
              },
              child: const Text('スクリーン1からスクリーン3へ'),
            ),
          ],
        )
      ),
    );
  }
}

class GoRouterSecondScreen extends StatelessWidget {
  const GoRouterSecondScreen({super.key});

  // 本画面のルートパス
  static const routePath = 'GoRouterSecondScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スクリーン2'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // canNotPopRouterで使用
                // GoRouter.of(context).go('/GoRouterThirdScreen');

                // canPopRouterで使用
                GoRouter.of(context).go('${GoRouterFirstScreen.routePath}${GoRouterSecondScreen.routePath}/${GoRouterThirdScreen.routePath}');
              },
              child: const Text('スクリーン2からスクリーン3へ'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                // canNotPopRouterで使用
                // Navigator.of(context).pop();

                // canPopRouterで使用
                GoRouter.of(context).pop();
              },
              child: const Text('戻るボタン'),
            ),
          ],
        )
      ),
    );
  }
}

class GoRouterThirdScreen extends StatelessWidget {
  const GoRouterThirdScreen({super.key});

  // 本画面のルートパス
  static const routePath = 'GoRouterThirdScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('スクリーン3'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // canNotPopRouterで使用
                // Navigator.of(context).pop();

                // canPopRouterで使用
                GoRouter.of(context).pop();
              },
              child: const Text('戻るボタン'),
            ),
          ],
        )
      ),
    );
  }
}