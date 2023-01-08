import 'package:flutter/material.dart';

class ArticleTitle extends StatelessWidget {
  const ArticleTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Gitのコミットメッセージの書き方（2023年ver.）",
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: Colors.black87,
      ),
    );
  }
}
