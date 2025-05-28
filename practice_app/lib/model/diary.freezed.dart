// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'diary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Diary _$DiaryFromJson(Map<String, dynamic> json) {
  return _Diary.fromJson(json);
}

/// @nodoc
mixin _$Diary {
  String get date => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  List<DiaryImage>? get image => throw _privateConstructorUsedError;
  String? get ingredients => throw _privateConstructorUsedError;
  String? get steps => throw _privateConstructorUsedError;
  String? get cookingTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryCopyWith<Diary> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryCopyWith<$Res> {
  factory $DiaryCopyWith(Diary value, $Res Function(Diary) then) =
      _$DiaryCopyWithImpl<$Res, Diary>;
  @useResult
  $Res call(
      {String date,
      String title,
      String description,
      List<DiaryImage>? image,
      String? ingredients,
      String? steps,
      String? cookingTime});
}

/// @nodoc
class _$DiaryCopyWithImpl<$Res, $Val extends Diary>
    implements $DiaryCopyWith<$Res> {
  _$DiaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? title = null,
    Object? description = null,
    Object? image = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? cookingTime = freezed,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as List<DiaryImage>?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as String?,
      cookingTime: freezed == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiaryCopyWith<$Res> implements $DiaryCopyWith<$Res> {
  factory _$$_DiaryCopyWith(_$_Diary value, $Res Function(_$_Diary) then) =
      __$$_DiaryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String date,
      String title,
      String description,
      List<DiaryImage>? image,
      String? ingredients,
      String? steps,
      String? cookingTime});
}

/// @nodoc
class __$$_DiaryCopyWithImpl<$Res> extends _$DiaryCopyWithImpl<$Res, _$_Diary>
    implements _$$_DiaryCopyWith<$Res> {
  __$$_DiaryCopyWithImpl(_$_Diary _value, $Res Function(_$_Diary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? title = null,
    Object? description = null,
    Object? image = freezed,
    Object? ingredients = freezed,
    Object? steps = freezed,
    Object? cookingTime = freezed,
  }) {
    return _then(_$_Diary(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value._image
          : image // ignore: cast_nullable_to_non_nullable
              as List<DiaryImage>?,
      ingredients: freezed == ingredients
          ? _value.ingredients
          : ingredients // ignore: cast_nullable_to_non_nullable
              as String?,
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as String?,
      cookingTime: freezed == cookingTime
          ? _value.cookingTime
          : cookingTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Diary implements _Diary {
  const _$_Diary(
      {required this.date,
      required this.title,
      required this.description,
      final List<DiaryImage>? image,
      this.ingredients,
      this.steps,
      this.cookingTime})
      : _image = image;

  factory _$_Diary.fromJson(Map<String, dynamic> json) =>
      _$$_DiaryFromJson(json);

  @override
  final String date;
  @override
  final String title;
  @override
  final String description;
  final List<DiaryImage>? _image;
  @override
  List<DiaryImage>? get image {
    final value = _image;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? ingredients;
  @override
  final String? steps;
  @override
  final String? cookingTime;

  @override
  String toString() {
    return 'Diary(date: $date, title: $title, description: $description, image: $image, ingredients: $ingredients, steps: $steps, cookingTime: $cookingTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Diary &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other._image, _image) &&
            (identical(other.ingredients, ingredients) ||
                other.ingredients == ingredients) &&
            (identical(other.steps, steps) || other.steps == steps) &&
            (identical(other.cookingTime, cookingTime) ||
                other.cookingTime == cookingTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      title,
      description,
      const DeepCollectionEquality().hash(_image),
      ingredients,
      steps,
      cookingTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiaryCopyWith<_$_Diary> get copyWith =>
      __$$_DiaryCopyWithImpl<_$_Diary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiaryToJson(
      this,
    );
  }
}

abstract class _Diary implements Diary {
  const factory _Diary(
      {required final String date,
      required final String title,
      required final String description,
      final List<DiaryImage>? image,
      final String? ingredients,
      final String? steps,
      final String? cookingTime}) = _$_Diary;

  factory _Diary.fromJson(Map<String, dynamic> json) = _$_Diary.fromJson;

  @override
  String get date;
  @override
  String get title;
  @override
  String get description;
  @override
  List<DiaryImage>? get image;
  @override
  String? get ingredients;
  @override
  String? get steps;
  @override
  String? get cookingTime;
  @override
  @JsonKey(ignore: true)
  _$$_DiaryCopyWith<_$_Diary> get copyWith =>
      throw _privateConstructorUsedError;
}

DiaryImage _$DiaryImageFromJson(Map<String, dynamic> json) {
  return _DiaryImage.fromJson(json);
}

/// @nodoc
mixin _$DiaryImage {
  String? get url => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  int? get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiaryImageCopyWith<DiaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiaryImageCopyWith<$Res> {
  factory $DiaryImageCopyWith(
          DiaryImage value, $Res Function(DiaryImage) then) =
      _$DiaryImageCopyWithImpl<$Res, DiaryImage>;
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class _$DiaryImageCopyWithImpl<$Res, $Val extends DiaryImage>
    implements $DiaryImageCopyWith<$Res> {
  _$DiaryImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiaryImageCopyWith<$Res>
    implements $DiaryImageCopyWith<$Res> {
  factory _$$_DiaryImageCopyWith(
          _$_DiaryImage value, $Res Function(_$_DiaryImage) then) =
      __$$_DiaryImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url, int? height, int? width});
}

/// @nodoc
class __$$_DiaryImageCopyWithImpl<$Res>
    extends _$DiaryImageCopyWithImpl<$Res, _$_DiaryImage>
    implements _$$_DiaryImageCopyWith<$Res> {
  __$$_DiaryImageCopyWithImpl(
      _$_DiaryImage _value, $Res Function(_$_DiaryImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? height = freezed,
    Object? width = freezed,
  }) {
    return _then(_$_DiaryImage(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiaryImage implements _DiaryImage {
  const _$_DiaryImage({this.url, this.height, this.width});

  factory _$_DiaryImage.fromJson(Map<String, dynamic> json) =>
      _$$_DiaryImageFromJson(json);

  @override
  final String? url;
  @override
  final int? height;
  @override
  final int? width;

  @override
  String toString() {
    return 'DiaryImage(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiaryImage &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiaryImageCopyWith<_$_DiaryImage> get copyWith =>
      __$$_DiaryImageCopyWithImpl<_$_DiaryImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiaryImageToJson(
      this,
    );
  }
}

abstract class _DiaryImage implements DiaryImage {
  const factory _DiaryImage(
      {final String? url, final int? height, final int? width}) = _$_DiaryImage;

  factory _DiaryImage.fromJson(Map<String, dynamic> json) =
      _$_DiaryImage.fromJson;

  @override
  String? get url;
  @override
  int? get height;
  @override
  int? get width;
  @override
  @JsonKey(ignore: true)
  _$$_DiaryImageCopyWith<_$_DiaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

MicroCmsDiaryResponse _$MicroCmsDiaryResponseFromJson(
    Map<String, dynamic> json) {
  return _MicroCmsDiaryResponse.fromJson(json);
}

/// @nodoc
mixin _$MicroCmsDiaryResponse {
  List<Diary> get contents => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicroCmsDiaryResponseCopyWith<MicroCmsDiaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicroCmsDiaryResponseCopyWith<$Res> {
  factory $MicroCmsDiaryResponseCopyWith(MicroCmsDiaryResponse value,
          $Res Function(MicroCmsDiaryResponse) then) =
      _$MicroCmsDiaryResponseCopyWithImpl<$Res, MicroCmsDiaryResponse>;
  @useResult
  $Res call({List<Diary> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class _$MicroCmsDiaryResponseCopyWithImpl<$Res,
        $Val extends MicroCmsDiaryResponse>
    implements $MicroCmsDiaryResponseCopyWith<$Res> {
  _$MicroCmsDiaryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? totalCount = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MicroCmsDiaryResponseCopyWith<$Res>
    implements $MicroCmsDiaryResponseCopyWith<$Res> {
  factory _$$_MicroCmsDiaryResponseCopyWith(_$_MicroCmsDiaryResponse value,
          $Res Function(_$_MicroCmsDiaryResponse) then) =
      __$$_MicroCmsDiaryResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Diary> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class __$$_MicroCmsDiaryResponseCopyWithImpl<$Res>
    extends _$MicroCmsDiaryResponseCopyWithImpl<$Res, _$_MicroCmsDiaryResponse>
    implements _$$_MicroCmsDiaryResponseCopyWith<$Res> {
  __$$_MicroCmsDiaryResponseCopyWithImpl(_$_MicroCmsDiaryResponse _value,
      $Res Function(_$_MicroCmsDiaryResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? totalCount = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$_MicroCmsDiaryResponse(
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<Diary>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MicroCmsDiaryResponse implements _MicroCmsDiaryResponse {
  const _$_MicroCmsDiaryResponse(
      {final List<Diary> contents = const [],
      this.totalCount = 0,
      this.offset = 0,
      this.limit = 0})
      : _contents = contents;

  factory _$_MicroCmsDiaryResponse.fromJson(Map<String, dynamic> json) =>
      _$$_MicroCmsDiaryResponseFromJson(json);

  final List<Diary> _contents;
  @override
  @JsonKey()
  List<Diary> get contents {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  @JsonKey()
  final int totalCount;
  @override
  @JsonKey()
  final int offset;
  @override
  @JsonKey()
  final int limit;

  @override
  String toString() {
    return 'MicroCmsDiaryResponse(contents: $contents, totalCount: $totalCount, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MicroCmsDiaryResponse &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contents),
      totalCount,
      offset,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MicroCmsDiaryResponseCopyWith<_$_MicroCmsDiaryResponse> get copyWith =>
      __$$_MicroCmsDiaryResponseCopyWithImpl<_$_MicroCmsDiaryResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicroCmsDiaryResponseToJson(
      this,
    );
  }
}

abstract class _MicroCmsDiaryResponse implements MicroCmsDiaryResponse {
  const factory _MicroCmsDiaryResponse(
      {final List<Diary> contents,
      final int totalCount,
      final int offset,
      final int limit}) = _$_MicroCmsDiaryResponse;

  factory _MicroCmsDiaryResponse.fromJson(Map<String, dynamic> json) =
      _$_MicroCmsDiaryResponse.fromJson;

  @override
  List<Diary> get contents;
  @override
  int get totalCount;
  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_MicroCmsDiaryResponseCopyWith<_$_MicroCmsDiaryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
