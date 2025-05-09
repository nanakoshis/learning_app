import 'package:flutter/material.dart';

class EnvironmentalVariablesScreen extends StatelessWidget {
  const EnvironmentalVariablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    /* このScreenは環境変数のテストで使用する
    操作方法
    JSONから環境変数(.evvファイル)を読み込むことで、下記変数が使用できる
    ターミナルで入力(プロジェクトディレクトリ配下)
    flutter run --dart-define-from-file=define/env.json 
    この方法でビルドする場合、ホットリロードができないので少々不便である
    利便性向上の対策としてflutter_dotenv パッケージの利用などがある
    */

    // 環境変数から読み込む変数
    const envModeName = String.fromEnvironment('envModeName');
    const envModeNum = String.fromEnvironment('envModeNum');
    const enableDebugMenu = bool.fromEnvironment('enableDebugMenu');

    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('EnvironmentalVariablesScreen(環境変数)'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
          child: Column(
        children: [
          const Text('現在は$envModeNameモード$envModeNumで実行中です。'),
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
          enableDebugMenu
              ? Container(
                  width: 200,
                  height: 50,
                  color: Colors.red,
                  child: const Center(
                    child: Text(
                      'デバッグページ',
                    ),
                  ),
                )
              : const SizedBox.shrink(),
        ],
      )),
    );
  }
}
