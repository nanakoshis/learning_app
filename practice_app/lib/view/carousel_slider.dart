import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// スライダー番号を監視
final carouselCurrentIndexProvider = StateProvider<int>((ref) => 0);

/// カルーセルのページ
class CarouselSliderScreen extends ConsumerWidget {
  const CarouselSliderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // スライダー番号
    int carouselCurrentIndex = ref.watch(carouselCurrentIndexProvider);

    // スライダーに表示する画像のパスのリスト
    final List<String> imagePathList = [
      'assets/images/carousel_na.png',
      'assets/images/carousel_na_2.png',
      'assets/images/carousel_ko.png',
      'assets/images/carousel_shi.png',
    ];

    // Scaffold マテリアルデザイン用のウィジェット（appBarなどを設定できる） MaterialAppの基本設定を引き継ぐ
    return Scaffold(
      appBar: AppBar(
        title: const Text('CarouselSliderScreen'),
        automaticallyImplyLeading: true, // 戻るボタン矢印
      ),
      body: Center(
        child: Column(
          children: [
            // カルーセルを生成する
            CarouselSlider.builder(
              options: CarouselOptions(
                  height: 300,
                  initialPage: carouselCurrentIndex,
                  enlargeCenterPage: true,
                  // カルーセルのページが変化した時の処理
                  // 変化後のページ番号をcarouselCurrentIndexに反映
                  onPageChanged: (index, reason) {
                    ref.watch(carouselCurrentIndexProvider.notifier).state =
                        carouselCurrentIndex = index;
                  }),
              // アイテム数=画像の数
              itemCount: imagePathList.length,
              // スライダーを変更すると呼び出される
              itemBuilder: (context, itemIndex, pageViewIndex) {
                final path = imagePathList[itemIndex];
                // カルーセルに表示するアイテム
                return viewImage(path);
              },
            ),
            const SizedBox(height: 20),
            // インジケータを横に並べる
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // マップでリストを一つづつ処理してインジケータを生成
              children: imagePathList.map((path) {
                // リスト番号を取得
                final int getIndex = imagePathList.indexOf(path);
                return Container(
                  width: 15,
                  height: 15,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 5.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    // リスト番号とcarouselCurrentIndexを比較してインジケータの色を決定
                    color: carouselCurrentIndex == getIndex
                        ? const Color.fromRGBO(115, 137, 187, 1)
                        : const Color.fromRGBO(115, 137, 187, 0.4),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

// 表示したい画像のウィジェット
Widget viewImage(path) {
  return Image.asset(
    path,
    fit: BoxFit.cover,
  );
}
