import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_app/components/colors.dart';
import 'package:practice_app/view/api_screen.dart';
import 'package:practice_app/view/callback_screen.dart';
import 'package:practice_app/view/carousel_slider.dart';
import 'package:practice_app/view/color_sample_screen.dart';
import 'package:practice_app/view/environmental_variables_screen.dart';

import 'view/first_screen.dart';
import 'view/my_home_pege.dart';
import 'view/test_screen.dart';
import 'view/url_launcher_screen.dart';

void main() async {
  /*
  ビルドコマンドによって環境変数の出しわけを行う
  例：flutter run --dart-define=FLAVOR=developmentでビルドした場合、デベロップモードで実行する
  ターミナルで毎回実行には手間がかかるのでflutter run以降のコマンドは自動設定が可能
  例えばVS Codeの場合はlaunch.jsonのargsで設定する
  */

  // dart-define から FLAVOR を取得
  const flavor = String.fromEnvironment('FLAVOR', defaultValue: 'development');

    // 環境に応じた .env ファイルを読み込む
  String envFile = '.env.development';
  if (flavor == 'staging') {
    envFile = '.env.staging';
  } else if (flavor == 'production') {
    envFile = '.env.production';
  }

  await dotenv.load(fileName: envFile);
  
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
    // TODO: 環境設定の出しわけ確認
    print("APP_MODE_NAME: ${dotenv.env['APP_MODE_NAME']}");
    print("APP_ENV: ${dotenv.env['APP_ENV']}");
    // MaterialApp Googleの標準デザイン（マテリアルデザイン）の雛形を設定（テーマカラーなど）
    return MaterialApp(
      title: 'Flutter Demo',
      // テーマカラーの設定
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // theme:sampleTheme,
      routes: {
        '/': (context) => const FirstScreen(),
        '/MyHomePage': (context) => const MyHomePage(title: 'Flutter Demo Home Page'),
        '/TestScreen': (context) => const TestScreen(),
        '/ApiScreen': (context) => const ApiScreen(),
        '/UrlLauncherScreen': (context) => const UrlLauncherScreen(),
        '/CallbackScreen': (context) => const CallbackScreen(),
        '/ColorSampleScreen': (context) => const ColorSampleScreen(),
        '/CarouselSliderScreen': (context) => const CarouselSliderScreen(),
        '/EnvironmentalVariablesScreen': (context) => const EnvironmentalVariablesScreen(),
      },
    );
  }
}