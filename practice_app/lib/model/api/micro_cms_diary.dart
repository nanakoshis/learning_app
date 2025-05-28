import 'package:dio/dio.dart';
import 'package:practice_app/model/diary.dart';
import 'package:retrofit/retrofit.dart';

part 'micro_cms_diary.g.dart';

@RestApi(baseUrl: 'https://nanakoshi.microcms.io')
//APIエンドポイントを呼び出すメソッドを定義

abstract class ApiClient {
  factory ApiClient(Dio dio, {String? baseUrl}) = _ApiClient;
  //DioインスタンスとbaseUrlをパラメータとして受け取る

  @GET('/api/v1/diary2') //APIからデータの取得を行うメソッド
  Future<MicroCmsDiaryResponse> getDiary(
    @Header("X-MICROCMS-API-KEY") String apiKey,
  );
}