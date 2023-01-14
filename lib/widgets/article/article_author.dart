import 'package:flutter/material.dart';
import 'package:zenn_reader/models/zenn_user.dart';

class ArticleAuthor extends StatelessWidget {
  final ZennUser user;

  const ArticleAuthor({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 12,
          backgroundColor: Colors.white,
          foregroundImage: NetworkImage(user.avatarSmallUrl),
        ),
        Container(
          margin: const EdgeInsets.only(left: 4),
          child: Text(
            user.username,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
