import 'package:flutter/material.dart';

// ColorScheme確認のカラーサンプルページ
class ColorSampleScreen extends StatelessWidget {
  const ColorSampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('ColorSampleScreen'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('ElevatedButton'),
            ),
            FloatingActionButton.extended(
              onPressed: () {},
              label: const Text('FloatingActionButton'),
              icon: const Icon(Icons.add),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text('FilledButton')
            ),
            FilledButton.tonal(
              onPressed: () {},
              child: const Text('FilledButton.tonal')
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('OutlinedButton')
            ),
            SizedBox(
              width: 200,
              child: TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "labelText",
                  hintText: "hintText"
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}