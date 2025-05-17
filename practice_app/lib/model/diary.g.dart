// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Diary _$$_DiaryFromJson(Map<String, dynamic> json) => _$_Diary(
      date: json['date'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      image: (json['image'] as List<dynamic>?)
          ?.map((e) => DiaryImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      ingredients: json['ingredients'] as String?,
      steps: json['steps'] as String?,
      cookingTime: json['cookingTime'] as String?,
    );

Map<String, dynamic> _$$_DiaryToJson(_$_Diary instance) => <String, dynamic>{
      'date': instance.date,
      'title': instance.title,
      'description': instance.description,
      'image': instance.image,
      'ingredients': instance.ingredients,
      'steps': instance.steps,
      'cookingTime': instance.cookingTime,
    };

_$_DiaryImage _$$_DiaryImageFromJson(Map<String, dynamic> json) =>
    _$_DiaryImage(
      url: json['url'] as String?,
      height: json['height'] as int?,
      width: json['width'] as int?,
    );

Map<String, dynamic> _$$_DiaryImageToJson(_$_DiaryImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };

_$_MicroCmsDiaryResponse _$$_MicroCmsDiaryResponseFromJson(
        Map<String, dynamic> json) =>
    _$_MicroCmsDiaryResponse(
      contents: (json['contents'] as List<dynamic>?)
              ?.map((e) => Diary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalCount: json['totalCount'] as int? ?? 0,
      offset: json['offset'] as int? ?? 0,
      limit: json['limit'] as int? ?? 0,
    );

Map<String, dynamic> _$$_MicroCmsDiaryResponseToJson(
        _$_MicroCmsDiaryResponse instance) =>
    <String, dynamic>{
      'contents': instance.contents,
      'totalCount': instance.totalCount,
      'offset': instance.offset,
      'limit': instance.limit,
    };
