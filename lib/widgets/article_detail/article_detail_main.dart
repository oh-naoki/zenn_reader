import 'package:flutter/material.dart';

class ArticleDetailMain extends StatelessWidget {
  final String title;
  final int bodyLettersCount;
  final int likedCount;
  final int commentsCount;

  const ArticleDetailMain({
    Key? key,
    required this.title,
    required this.bodyLettersCount,
    required this.likedCount,
    required this.commentsCount,
  }) : super(key: key);

  Widget listTile(String title, String label) {
    return Container(
      width: 240,
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(label),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          listTile('文字数', bodyLettersCount.toString()),
          listTile('お気に入り数', likedCount.toString()),
          listTile('コメント数', commentsCount.toString()),
        ],
      ),
    );
  }
}
