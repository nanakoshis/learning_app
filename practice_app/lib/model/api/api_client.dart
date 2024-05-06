import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../posts.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
//APIエンドポイントを呼び出すメソッドを定義

abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;
  //DioインスタンスとbaseUrlをパラメータとして受け取る

  @GET('/posts')//APIからデータの取得を行うメソッド
  Future<List<Posts>> getPosts();//取得結果が`<List<Posts>>`として返される
}