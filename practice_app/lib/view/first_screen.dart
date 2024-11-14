import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('FirstScreen'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/MyHomePage'),
              child: const Text('MyHomePage'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/TestScreen'),
              child: const Text('TestScreen'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/ApiScreen'),
              child: const Text('TestSApiScreen'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/UrlLauncherScreen'),
              child: const Text('UrlLauncherScreen'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/CallbackScreen'),
              child: const Text('CallbackScreen'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/ColorSampleScreen'),
              child: const Text('ColorSampleScreen'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () =>
                  Navigator.pushNamed(context, '/CarouselSliderScreen'),
              child: const Text('CarouselSliderScreen'),
            ),
          ],
        )
      ),
    );
  }
}