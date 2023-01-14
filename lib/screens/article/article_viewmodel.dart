import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zenn_reader/models/zenn_article.dart';
import 'package:zenn_reader/repositories/zenn_repository.dart';

part 'article_viewmodel.freezed.dart';
part 'article_viewmodel.g.dart';

@freezed
abstract class ArticleScreenState with _$ArticleScreenState {
  const factory ArticleScreenState({
    @Default(null) List<ZennArticle>? articleList,
  }) = _ArticleScreenState;
}

final articleViewModelProvider = StateNotifierProvider.autoDispose<ArticleViewModel, ArticleScreenState>((ref) {
  return ArticleViewModel(zennRepository: ref.watch(zennRepositoryProvider));
});

class ArticleViewModel extends StateNotifier<ArticleScreenState> {
  final ZennRepository zennRepository;

  ArticleViewModel({
    required this.zennRepository,
  }) : super(const ArticleScreenState());

  loadArticleList() async {
    state = state.copyWith(articleList: await zennRepository.fetch());
  }
}
