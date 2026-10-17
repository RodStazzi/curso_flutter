import 'package:flutter/material.dart';
import 'package:d_app_chat/domain/entities/msg.dart';
//import 'package:d_app_chat/utils/date_time.dart';

class MsgBubble extends StatelessWidget {

  const MsgBubble({super.key, required this.msg, required this.date});

final Msg msg;
final DateTime date;

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
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(msg.text, style: TextStyle(color: Colors.white),),
              SizedBox(height: 4),
              Text(
  '${date.hour.toString().padLeft(2, '0')}:'
  '${date.minute.toString().padLeft(2, '0')}:'
  '${date.second.toString().padLeft(2, '0')}',
  style: const TextStyle(
    color: Colors.white70,
    fontSize: 12,
  ),
)
              // Text(
              //   date.toString(),
              //   style: TextStyle(color: Colors.white70, fontSize: 12),
              // ),
            ],
          ),        )
      ],
    );
  }
}