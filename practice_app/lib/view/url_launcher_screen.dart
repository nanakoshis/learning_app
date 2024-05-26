import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherScreen extends StatelessWidget {
  const UrlLauncherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('UrlLauncherScreen'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // UrlLauncherクラスを呼び出す
                final urlLauncher = UrlLauncher();
                urlLauncher.makePhoneCall('7754-775-775');  // 呼び出したい電話番号を引数に渡す
              },
              child: const Text('電話アプリを起動します'),
            ),
          ],
        )
      ),
    );
  }
}

// UrlLauncherの起動メソッドが入ったクラス
class UrlLauncher {
  // 電話アプリを起動するメソッド
  Future makePhoneCall(String phoneNumber) async {
    // 電話アプリを呼び出すのでschemeはtel
    // pathに任意の電話番号を入れる
    final Uri getPhoneNumber = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    // launchUrlでパッケージ起動、引数には上記の設定を入れる
    await launchUrl(getPhoneNumber);
  }
}