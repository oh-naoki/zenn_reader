import 'package:flutter/material.dart';

class ArticleDetailEmojiHeader extends StatelessWidget {
  const ArticleDetailEmojiHeader({
    Key? key,
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
      child: const Text(
        "☔",
        style: TextStyle(
          fontSize: 64,
        ),
      ),
    );
  }
}
