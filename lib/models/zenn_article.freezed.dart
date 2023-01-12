// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zenn_article.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZennArticle _$ZennArticleFromJson(Map<String, dynamic> json) {
  return _ZennArticle.fromJson(json);
}

/// @nodoc
mixin _$ZennArticle {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get emoji => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZennArticleCopyWith<ZennArticle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZennArticleCopyWith<$Res> {
  factory $ZennArticleCopyWith(
          ZennArticle value, $Res Function(ZennArticle) then) =
      _$ZennArticleCopyWithImpl<$Res, ZennArticle>;
  @useResult
  $Res call({int id, String title, String emoji, String path});
}

/// @nodoc
class _$ZennArticleCopyWithImpl<$Res, $Val extends ZennArticle>
    implements $ZennArticleCopyWith<$Res> {
  _$ZennArticleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? emoji = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZennArticleCopyWith<$Res>
    implements $ZennArticleCopyWith<$Res> {
  factory _$$_ZennArticleCopyWith(
          _$_ZennArticle value, $Res Function(_$_ZennArticle) then) =
      __$$_ZennArticleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String title, String emoji, String path});
}

/// @nodoc
class __$$_ZennArticleCopyWithImpl<$Res>
    extends _$ZennArticleCopyWithImpl<$Res, _$_ZennArticle>
    implements _$$_ZennArticleCopyWith<$Res> {
  __$$_ZennArticleCopyWithImpl(
      _$_ZennArticle _value, $Res Function(_$_ZennArticle) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? emoji = null,
    Object? path = null,
  }) {
    return _then(_$_ZennArticle(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      emoji: null == emoji
          ? _value.emoji
          : emoji // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZennArticle implements _ZennArticle {
  const _$_ZennArticle(
      {required this.id,
      required this.title,
      required this.emoji,
      required this.path});

  factory _$_ZennArticle.fromJson(Map<String, dynamic> json) =>
      _$$_ZennArticleFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String emoji;
  @override
  final String path;

  @override
  String toString() {
    return 'ZennArticle(id: $id, title: $title, emoji: $emoji, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZennArticle &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.emoji, emoji) || other.emoji == emoji) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, emoji, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZennArticleCopyWith<_$_ZennArticle> get copyWith =>
      __$$_ZennArticleCopyWithImpl<_$_ZennArticle>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZennArticleToJson(
      this,
    );
  }
}

abstract class _ZennArticle implements ZennArticle {
  const factory _ZennArticle(
      {required final int id,
      required final String title,
      required final String emoji,
      required final String path}) = _$_ZennArticle;

  factory _ZennArticle.fromJson(Map<String, dynamic> json) =
      _$_ZennArticle.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get emoji;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_ZennArticleCopyWith<_$_ZennArticle> get copyWith =>
      throw _privateConstructorUsedError;
}