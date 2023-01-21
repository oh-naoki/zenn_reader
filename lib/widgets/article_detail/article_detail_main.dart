import 'package:flutter/material.dart';

class ArticleDetailMain extends StatelessWidget {
  const ArticleDetailMain({Key? key}) : super(key: key);

  Widget listTile(String title, String label) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              "Title",
              style: TextStyle(
                fontSize: 32,
              ),
            ),
          ),
          listTile('Name ', 'oh-naoki'),
          listTile('Name ', 'oh-naoki'),
          listTile('Name ', 'oh-naoki'),
        ],
      ),
    );
  }
}
