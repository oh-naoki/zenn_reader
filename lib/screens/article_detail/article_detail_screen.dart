import 'package:flutter/material.dart';
import 'package:zenn_reader/screens/article_detail/article_detail_body.dart';

class ArticleDetailScreen extends StatelessWidget {
  final int articleId;

  const ArticleDetailScreen({Key? key, required this.articleId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Title'),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: ArticleDetailBody(
          articleId: articleId,
        ),
      ),
    );
  }
}
