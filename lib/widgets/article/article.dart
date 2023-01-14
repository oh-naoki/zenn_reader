import 'package:flutter/material.dart';
import 'package:zenn_reader/models/zenn_article.dart';
import 'package:zenn_reader/widgets/article/article_author.dart';
import 'package:zenn_reader/widgets/article/article_emoji_card.dart';
import 'package:zenn_reader/widgets/article/article_title.dart';

class Article extends StatelessWidget {
  final ZennArticle zennArticle;

  const Article({Key? key, required this.zennArticle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: GestureDetector(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ArticleEmojiCard(
              emoji: zennArticle.emoji,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 8,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ArticleTitle(
                      articleTitle: zennArticle.title,
                    ),
                    ArticleAuthor(
                      user: zennArticle.user,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
