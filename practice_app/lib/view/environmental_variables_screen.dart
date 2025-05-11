import 'package:flutter/material.dart';

class EnvironmentalVariablesScreen extends StatelessWidget {
  const EnvironmentalVariablesScreen({
    this.appModeName,
    this.appEnv,
    required this.isDebugModeEnabled,
    super.key});

    /// ビルドモード名
    final String? appModeName;
    /// 環境変数名
    final String? appEnv;
    /// デバッグモードフラグ
    final bool isDebugModeEnabled;

  @override
  Widget build(BuildContext context) {
    /* このScreenは環境変数のテストで使用する
    ビルドする環境変数によってUIが変化する
    */

    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('EnvironmentalVariablesScreen(環境変数)'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
          child: Column(
        children: [
          Text('現在$appModeName($appEnv)モードで実行中です。'),
          const Text('環境変数によってダミーボタンの表示が変わります。'),
          const SizedBox(
            height: 20,
          ),
          Container(
            width: 200,
            height: 50,
            color: Colors.amber,
            child: const Center(
              child: Text(
                'サンプルページ1',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          // デバッグモードの場合はデバッグページのボタンを表示する
          isDebugModeEnabled
              ? Container(
                  width: 200,
                  height: 50,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'デバッグページ(development)',
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      )),
    );
  }
}
