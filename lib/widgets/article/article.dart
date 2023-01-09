import 'package:flutter/material.dart';
import 'package:zenn_reader/widgets/article/article_author.dart';
import 'package:zenn_reader/widgets/article/article_emoji_card.dart';
import 'package:zenn_reader/widgets/article/article_title.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ArticleEmojiCard(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                left: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  ArticleTitle(),
                  ArticleAuthor(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
