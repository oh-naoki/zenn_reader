import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zenn_reader/screens/article_detail/article_detail_viewmodel.dart';
import 'package:zenn_reader/widgets/article_detail/article_detail_emoji_header.dart';
import 'package:zenn_reader/widgets/article_detail/article_detail_main.dart';

class ArticleDetailBody extends ConsumerWidget {
  final int articleId;

  const ArticleDetailBody({
    Key? key,
    required this.articleId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(articleDetailViewModelProvider);
    ref.read(articleDetailViewModelProvider.notifier).loadArticle(articleId);

    return viewState.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, stack) => const Center(
        child: Text("error"),
      ),
      data: (viewState) {
        return Column(
          children: [
            ArticleDetailEmojiHeader(
              emoji: viewState.article.emoji,
            ),
            // ここの Widget 分割は適当
            ArticleDetailMain(
              title: viewState.article.title,
              likedCount: viewState.article.likedCount,
              bodyLettersCount: viewState.article.bodyLettersCount,
              commentsCount: viewState.article.commentsCount,
            ),
          ],
        );
      },
    );
  }
}
