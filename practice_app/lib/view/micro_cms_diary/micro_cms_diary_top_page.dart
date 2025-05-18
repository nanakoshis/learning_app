import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practice_app/model/diary.dart'; // Diaryクラスをインポート
import 'package:practice_app/view_model/provider.dart'; // Dio をインポート

class MicroCmsDiaryTopPage extends ConsumerWidget {
  const MicroCmsDiaryTopPage({super.key});

  @override
  Widget build(context, WidgetRef ref) {
    final AsyncValue<List<Diary>> value = ref.watch(diaryResponceProvider);

    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('ApiServiceScreen'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: value.when(
                data: (item) {
                  if (item.isEmpty) {
                    return const Center(child: Text('リストが見つかりませんでした'));
                  } else {
                    return _postsListView(item);
                  }
                },
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
           subtitle: Text('${item[index].date}'),
           onTap: () {
            
           },
         );
       },
     );
  }
}