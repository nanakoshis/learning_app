import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_app/model/api/repository/micro_cms_diary_repository.dart';
import 'package:practice_app/model/diary.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/api/repository/api_repository.dart';
import '../model/posts.dart';

part 'provider.g.dart';

  @riverpod
  // Provider名のProviderは省略可能。これでpostsResponceProviderとなる
  Future<List<Posts>> postsResponce(PostsResponceRef ref) async {
    final repository = ApiRepository();
  try {
    return await repository.getPosts();
  } catch (e) {
    // API呼び出し中にエラーが発生した場合はここでキャッチ
    print('Failed to load tasks: $e');
    return [];
  }
}

  @riverpod
  Future<List<Diary>> diaryResponce(DiaryResponceRef ref) async {
    final repository = MicroCmsDiaryRepository();
  try {
    return await repository.getDiary();
  } catch (e) {
    // API呼び出し中にエラーが発生した場合はここでキャッチ
    print('Failed to load tasks: $e');
    // 空の値を返す
    return [];
  }
}