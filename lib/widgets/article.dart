import 'package:flutter/material.dart';

class Article extends StatelessWidget {
  const Article({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('emoji'),
        Column(
          children: const [
            Text('Article Title'),
            Text('Author'),
          ],
        ),
      ],
    );
  }
}
