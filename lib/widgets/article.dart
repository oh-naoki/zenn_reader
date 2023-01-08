import 'package:flutter/material.dart';
import 'package:zenn_reader/widgets/article_title.dart';
import 'package:zenn_reader/widgets/emoji_card.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const EmojiCard(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: Column(
              children: const [
                ArticleTitle(),
                Text('Author'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
