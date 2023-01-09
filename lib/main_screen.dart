import 'package:flutter/material.dart';
import 'package:zenn_reader/widgets/article/article.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zenn Reader'),
      ),
      backgroundColor: Colors.lightBlueAccent,
      body: Column(
        children: const [
          Article(),
          Article(),
        ],
      ),
    );
  }
}
