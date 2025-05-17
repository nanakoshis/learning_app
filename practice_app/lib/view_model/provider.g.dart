// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$postsResponceHash() => r'10722def7b928f7df18b5ed89fc4c636ab03a9e9';

/// See also [postsResponce].
final postsResponceProvider = AutoDisposeFutureProvider<List<Posts>>(
  postsResponce,
  name: r'postsResponceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$postsResponceHash,
);
typedef PostsResponceRef = AutoDisposeFutureProviderRef<List<Posts>>;
String _$diaryResponceHash() => r'31f776b8c0149c0d68beb7fbfa4276c034e66075';

/// See also [diaryResponce].
final diaryResponceProvider = AutoDisposeFutureProvider<List<Diary>>(
  diaryResponce,
  name: r'diaryResponceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$diaryResponceHash,
);
typedef DiaryResponceRef = AutoDisposeFutureProviderRef<List<Diary>>;
