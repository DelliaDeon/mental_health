import 'package:flutter/material.dart';

class EmojiComp extends StatelessWidget {
  final String emoji;
  final String text;

  EmojiComp({
    super.key,
    required this.emoji,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.pink[300],
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.symmetric(vertical: 9, horizontal: 12),
          child: Center(
            child: Text(
              emoji,
              style: TextStyle(
                fontSize: 35,
                color: Colors.white
              ),
            ),
          ),
        ),

        SizedBox(height: 8,),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        )
      ],
    );
  }
}
