import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('TestScreen'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: const Center(
        child: Text ('テストページ')
      ),
    );
  }
}