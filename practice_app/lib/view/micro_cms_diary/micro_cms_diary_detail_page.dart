import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practice_app/model/diary.dart';

class MicroCmsDiaryDetailPage extends StatelessWidget {
  final String title;
  final String date;
  final String description;
  final List<DiaryImage>? image;
  final String? ingredients;
  final String? steps;
  final String? cookingTime;

  const MicroCmsDiaryDetailPage({
    super.key,
    required this.title,
    required this.date,
    required this.description,
    this.image,
    this.ingredients,
    this.steps,
    this.cookingTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DiaryDetail')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // タイトルと日付（大文字・横並び）
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title.toUpperCase(),
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  date.toUpperCase(),
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 16),
            // 画像カルーセル
            if (image != null && image!.isNotEmpty)
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                ),
                items: image!.map((img) {
                  return Builder(
                    builder: (BuildContext context) {
                      return ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          img.url ?? '',
                          fit: BoxFit.cover,
                          width: double.infinity,
                          errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            const SizedBox(height: 16),
            // 説明
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            // 材料
            if (ingredients != null && ingredients!.isNotEmpty) ...[
              const Text('INGREDIENTS', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(ingredients!),
              const SizedBox(height: 16),
            ],
            // 手順
            if (steps != null && steps!.isNotEmpty) ...[
              const Text('STEPS', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(steps!),
              const SizedBox(height: 16),
            ],
            // 調理時間
            if (cookingTime != null && cookingTime!.isNotEmpty) ...[
              const Text('COOKING TIME', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(cookingTime!),
            ],
          ],
        ),
      ),
    );
  }
}