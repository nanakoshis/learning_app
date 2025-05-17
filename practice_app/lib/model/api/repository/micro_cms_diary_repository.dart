
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:practice_app/model/api/micro_cms_diary.dart';
import 'package:practice_app/model/diary.dart';

class MicroCmsDiaryRepository {
  final ApiClient _client;
  MicroCmsDiaryRepository([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  // 環境変数からapiKeyを呼び出す
  final String? apiKey = dotenv.env['APP_API_KEY'];

  Future<List<Diary>>getDiary() async {
    final res = await _client.getDiary(apiKey!);
    final diaries = res.contents;
    try {
      if (apiKey != null) {
        return diaries;
      } else {
        // apiKeyが存在しない場合、空の配列を返す
        return [];
      }
    } catch (e) {
      // エラーが発生した場合は例外をスロー
      throw e;
    }
  }
}