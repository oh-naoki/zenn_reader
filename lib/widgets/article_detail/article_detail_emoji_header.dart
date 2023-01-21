import 'package:flutter/material.dart';

class ArticleDetailEmojiHeader extends StatelessWidget {
  final String emoji;

  const ArticleDetailEmojiHeader({
    Key? key,
    required this.emoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(64),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: Text(
        emoji,
        style: const TextStyle(
          fontSize: 64,
        ),
      ),
    );
  }
}
