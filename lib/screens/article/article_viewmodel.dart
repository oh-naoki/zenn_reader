import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zenn_reader/models/zenn_article.dart';
import 'package:zenn_reader/repositories/zenn_repository.dart';

part 'article_viewmodel.freezed.dart';

@freezed
abstract class ArticleScreenState with _$ArticleScreenState {
  const factory ArticleScreenState({
    @Default([]) List<ZennArticle> articles,
  }) = _ArticleScreenState;
}

final articleViewModelProvider = StateNotifierProvider<ArticleViewModel, AsyncValue<ArticleScreenState>>((ref) {
  return ArticleViewModel(zennRepository: ref.watch(zennRepositoryProvider));
});

class ArticleViewModel extends StateNotifier<AsyncValue<ArticleScreenState>> {
  final ZennRepository zennRepository;

  ArticleViewModel({
    required this.zennRepository,
  }) : super(const AsyncLoading<ArticleScreenState>()) {
    loadArticles();
  }

  Future<void> loadArticles() async {
    state = await AsyncValue.guard(() async {
      final articles = await zennRepository.fetch();
      return ArticleScreenState(articles: articles);
    });
  }
}
