import 'package:flutter/material.dart';

class EmojiCard extends StatelessWidget {
  const EmojiCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          '☔',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
