import 'package:flutter/material.dart';

class MsgBubble extends StatelessWidget {

  const MsgBubble({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          margin: EdgeInsets.only(bottom: 12),
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(12)
          ),
          child: Text('Hello, this is a message bubble!', style: TextStyle(color: Colors.white),),
        )
      ],
    );
  }
}