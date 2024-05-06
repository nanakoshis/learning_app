import 'package:dio/dio.dart';

import '../../posts.dart';
import '../api_client.dart';

class ApiRepository {
  final ApiClient _client;//先ほど別ファイルで作成したAPIクライアントを作成

  ApiRepository([ApiClient? client])
      : _client = client ?? ApiClient(Dio());

  Future<List<Posts>> getPosts() async {
    try {
      // APIからタスクを取得し、成功したらそのままリターン
      return await _client.getPosts();
    } catch (e) {
      // エラーが発生した場合は例外をスロー
      throw e;
    }
  }
}