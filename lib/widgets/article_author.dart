import 'package:flutter/material.dart';

class ArticleAuthor extends StatelessWidget {
  const ArticleAuthor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 12,
          backgroundColor: Colors.white,
        ),
        Container(
          margin: const EdgeInsets.only(left: 4),
          child: const Text(
            'author name',
            style: TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
