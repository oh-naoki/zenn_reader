import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zenn_reader/models/zenn_user.dart';

part 'zenn_article.freezed.dart';
part 'zenn_article.g.dart';

@freezed
abstract class ZennArticle with _$ZennArticle {
  const factory ZennArticle({
    required int id,
    required String title,
    required String emoji,
    required String path,
    required int bodyLettersCount,
    required int likedCount,
    required int commentsCount,
    required ZennUser user,
  }) = _ZennArticle;

  factory ZennArticle.fromJson(Map<String, dynamic> json) => _$ZennArticleFromJson(json);
}
