import 'package:d_app_chat/domain/entities/msg.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  List<Msg> msg  = [
    Msg(
      text: 'Hello, this is a message bubble!',
      who: Who.me,
      date: DateTime.now()
    ),
    Msg(
      text: 'Hello, this is a other message bubble!',
      who: Who.other,
      date: DateTime.now()
    )
  ];

Future<void> addMsg(Msg newMsg) async {
    // msg.add(newMsg);
    // notifyListeners();
  }

} 