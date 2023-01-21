// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zenn_article.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZennArticle _$$_ZennArticleFromJson(Map<String, dynamic> json) =>
    _$_ZennArticle(
      id: json['id'] as int,
      title: json['title'] as String,
      emoji: json['emoji'] as String,
      path: json['path'] as String,
      bodyLettersCount: json['bodyLettersCount'] as int,
      likedCount: json['likedCount'] as int,
      commentsCount: json['commentsCount'] as int,
      user: ZennUser.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ZennArticleToJson(_$_ZennArticle instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'emoji': instance.emoji,
      'path': instance.path,
      'bodyLettersCount': instance.bodyLettersCount,
      'likedCount': instance.likedCount,
      'commentsCount': instance.commentsCount,
      'user': instance.user,
    };
