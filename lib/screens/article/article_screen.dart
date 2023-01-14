import 'package:flutter/material.dart';
import 'package:zenn_reader/screens/article/article_body.dart';

class ArticleScreen extends StatelessWidget {
  const ArticleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zenn Reader'),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: const ArticleBody(),
    );
  }
}
