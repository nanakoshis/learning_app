import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/posts.dart';
import '../view_model/provider.dart';

class ApiScreen extends ConsumerWidget {
  const ApiScreen({super.key});

  @override
  Widget build(context, WidgetRef ref) {
    final AsyncValue<List<Posts>> value = ref.watch(postsResponceProvider);

    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('ApiScreen'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: value.when(
                data: (item) {
                  return _postsListView(item);
                },
                // データが習得できなかったら、ローディングされる.
                error: (err, stack) => Center(child: Text(err.toString())),
                // 読み込み中にくるくる表示
                loading: () => const CircularProgressIndicator()
              )
            ),
          ],
        )
      ),
    );
  }

  Widget _postsListView(item) {
    return ListView.builder(
       itemCount: item.length,
       itemBuilder: (context, index) {
         return ListTile(
           title: Text('${item[index].title}'),
           subtitle: Text('${item[index].body}'),
         );
       },
     );
  }
}