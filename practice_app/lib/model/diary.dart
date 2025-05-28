import 'package:freezed_annotation/freezed_annotation.dart';

// 生成されるdartファイルを記述
part 'diary.freezed.dart';
part 'diary.g.dart';

// freezedでコード生成するために「@freezed」を記述
@freezed
class Diary with _$Diary {

  const factory Diary({
    required String date,
    required String title,
    required String description,
    List<DiaryImage>? image,
    String? ingredients,
    String? steps,
    String? cookingTime,
  }) = _Diary;

  // json形式で受け取るためのコードを生成するために記述
  factory Diary.fromJson(Map<String, dynamic> json) => _$DiaryFromJson(json);
}

@freezed
class DiaryImage with _$DiaryImage {
    const factory DiaryImage({
    String? url,
    int? height,
    int? width,
  }) = _DiaryImage;

  // json形式で受け取るためのコードを生成するために記述
  factory DiaryImage.fromJson(Map<String, dynamic> json) => _$DiaryImageFromJson(json);
  
}

// レスポンスを受け取るclass
@freezed
class MicroCmsDiaryResponse with _$MicroCmsDiaryResponse {
  const factory MicroCmsDiaryResponse({
    @Default([]) List<Diary> contents,
    @Default(0) int totalCount,
    @Default(0) int offset,
    @Default(0) int limit,
  }) = _MicroCmsDiaryResponse;

  factory MicroCmsDiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$MicroCmsDiaryResponseFromJson(json);
}