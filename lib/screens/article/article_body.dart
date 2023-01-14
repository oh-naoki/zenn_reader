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
    final articles = ref.watch(articleViewModelProvider);
    return articles.when(
      loading: () => const CircularProgressIndicator(),
      error: (err, stack) => const Text("error"),
      data: (viewState) {
        return ListView(
          padding: const EdgeInsets.all(8),
          children: viewState.articles.map((article) {
            return Article(
              zennArticle: article,
            );
          }).toList(),
        );
      },
    );
  }
}
