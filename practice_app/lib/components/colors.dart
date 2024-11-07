import 'package:flutter/material.dart';

final sampleTheme = 
  ThemeData(
    colorScheme: const ColorScheme(
      // 明るさのプロパティBrightness.1ight=昼間 Brightness.dark=夜
      brightness: Brightness.light,
      // アプリの画面とコンポーネント全体で最も頻繁に表示される色
      // ウィジェットの上に表示される文字色など
      primary: Colors.black,
      // プライマリとセットで考える色
      onPrimary: Colors.white,
      // アクセントカラー、強調色に表現の幅を広げる
      secondary: Colors.orange,
      // アクセントカラーとセットで考える色
      onSecondary: Colors.brown,
      // 入力検証エラーに使用する色エラーテキストの色
      error: Colors.red,
      // エラーテキストとセットで考える色
      onError: Colors.white,
      // 全体の背景色
      background: Colors.white,
      // 背景に描かれたときにはっきりと判読できる色
      // 例:アウトライン TextFieldやOutlinedButtonの枠線に使用
      onBackground: Colors.indigo,
      // ウィジェットの背景色
      // AppBerやButtonなど
      surface: Colors.yellowAccent,
      // ベースの文字色
      onSurface: Colors.green,
    )
  );