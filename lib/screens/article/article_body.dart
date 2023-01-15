import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zenn_reader/screens/article/article_viewmodel.dart';
import 'package:zenn_reader/widgets/article/article.dart';

class ArticleBody extends ConsumerWidget {
  const ArticleBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewState = ref.watch(articleViewModelProvider);
    final viewModel = ref.read(articleViewModelProvider.notifier);
    return viewState.when(
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (err, stack) => const Center(
        child: Text("error"),
      ),
      data: (viewState) {
        return RefreshIndicator(
          onRefresh: viewModel.loadArticles,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: viewState.articles.map((article) {
              return Article(
                zennArticle: article,
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
