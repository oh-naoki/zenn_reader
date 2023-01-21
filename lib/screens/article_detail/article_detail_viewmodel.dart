import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zenn_reader/models/zenn_article.dart';
import 'package:zenn_reader/repositories/zenn_repository.dart';

part 'article_detail_viewmodel.freezed.dart';

@freezed
abstract class ArticleDetailScreenState with _$ArticleDetailScreenState {
  const factory ArticleDetailScreenState({
    required ZennArticle article,
  }) = _ArticleDetailScreenState;
}

final articleDetailViewModelProvider = StateNotifierProvider<ArticleDetailViewModel, AsyncValue<ArticleDetailScreenState>>((ref) {
  return ArticleDetailViewModel(zennRepository: ref.watch(zennRepositoryProvider));
});

class ArticleDetailViewModel extends StateNotifier<AsyncValue<ArticleDetailScreenState>> {
  final ZennRepository zennRepository;

  ArticleDetailViewModel({
    required this.zennRepository,
  }) : super(const AsyncLoading());

  loadArticle(int id) async {
    state = await AsyncValue.guard(() async {
      final article = await zennRepository.fetch().then((articles) {
        return articles.firstWhere((article) => article.id == id);
      });
      return ArticleDetailScreenState(article: article);
    });
  }
}
