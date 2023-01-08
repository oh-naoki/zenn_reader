import 'package:flutter/material.dart';
import 'package:zenn_reader/widgets/emoji_card.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const EmojiCard(),
        Column(
          children: const [
            Text('Article Title'),
            Text('Author'),
          ],
        ),
      ],
    );
  }
}
