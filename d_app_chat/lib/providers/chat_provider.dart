import 'package:d_app_chat/domain/entities/msg.dart';
import 'package:flutter/material.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();

  Who _selectedSender = Who.me;
  Who get selectedSender => _selectedSender;

  void changeSelectedSender(Who newSender) {
    _selectedSender = newSender;
    notifyListeners();
  }

  List<Msg> msg = [
    Msg(
      text: 'Hello, this is a message bubble!',
      who: Who.me,
      date: DateTime.now(),
    ),
    Msg(
      text: 'Hello, this is a other message bubble!',
      who: Who.other,
      date: DateTime.now(),
    ),
  ];

  Future<void> addMsg(String nmsg) async {
    if (nmsg.trim().isEmpty) return;

    final newMsg = Msg(text: nmsg, who: selectedSender, date: DateTime.now());
    msg.add(newMsg);
    moveScrollToBottom();
    notifyListeners();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));
    scrollController.animateTo(
      scrollController.position.maxScrollExtent + 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }
}
