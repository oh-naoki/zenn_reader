import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zenn_reader/screens/article/article_viewmodel.dart';
import 'package:zenn_reader/widgets/article_detail/article_detail_emoji_header.dart';
import 'package:zenn_reader/widgets/article_detail/article_detail_main.dart';

class ArticleDetailBody extends ConsumerWidget {
  const ArticleDetailBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // TODO: Replace
    final viewState = ref.watch(articleViewModelProvider);
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
            ArticleDetailEmojiHeader(),
            ArticleDetailMain(),
          ],
        );
      },
    );
  }
}
