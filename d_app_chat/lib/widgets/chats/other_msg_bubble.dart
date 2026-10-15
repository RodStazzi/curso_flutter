import 'package:flutter/material.dart';

class OtherMsgBubble extends StatelessWidget {

  const OtherMsgBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Text('Hello, this is a other message bubble!', style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}