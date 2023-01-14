// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_viewmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleScreenState _$$_ArticleScreenStateFromJson(
        Map<String, dynamic> json) =>
    _$_ArticleScreenState(
      articleList: (json['articleList'] as List<dynamic>?)
              ?.map((e) => ZennArticle.fromJson(e as Map<String, dynamic>))
              .toList() ??
          null,
    );

Map<String, dynamic> _$$_ArticleScreenStateToJson(
        _$_ArticleScreenState instance) =>
    <String, dynamic>{
      'articleList': instance.articleList,
    };
