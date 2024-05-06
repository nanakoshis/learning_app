import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'posts.freezed.dart';
part 'posts.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class Posts with _$Posts { // withの後には「_$[class name]」の形式で記述

  // プロパティを指定
  const factory Posts({
    required int userId,
    required int id,
    required String title,
    required String body,
  }) = _Posts;

  // json形式で受け取るためのコードを生成するために記述
  factory Posts.fromJson(Map<String, dynamic> json) => _$PostsFromJson(json);
}