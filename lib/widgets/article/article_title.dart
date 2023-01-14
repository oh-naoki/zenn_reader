import 'package:flutter/material.dart';

class ArticleTitle extends StatelessWidget {
  final String articleTitle;

  const ArticleTitle({Key? key, required this.articleTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      articleTitle,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
      maxLines: 2,
    );
  }
}
