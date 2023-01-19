import 'package:flutter/material.dart';

class ArticleDetailScreen extends StatelessWidget {
  const ArticleDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Article Title'),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Text('Detail'),
      ),
    );
  }
}
