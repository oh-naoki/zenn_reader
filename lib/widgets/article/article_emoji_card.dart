import 'package:flutter/material.dart';

class ArticleEmojiCard extends StatelessWidget {
  final String emoji;

  const ArticleEmojiCard({Key? key, required this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 80,
      child: Card(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        child: Center(
          child: Text(
            emoji,
            style: const TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}
