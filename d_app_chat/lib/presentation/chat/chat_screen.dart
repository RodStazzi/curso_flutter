import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:d_app_chat/widgets/chats/msg_bubble.dart';
import 'package:d_app_chat/widgets/chats/other_msg_bubble.dart';
import 'package:d_app_chat/widgets/shared/msg_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome to Chat App Simulator'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        centerTitle: false,
        titleSpacing: 0,
        toolbarHeight: 50,
        backgroundColor: Colors.blueAccent,
        // leading: Padding(
        //   padding: const EdgeInsets.all(8),
        //   child: CircleAvatar(
        //     backgroundColor: Colors.pinkAccent,
        //     child: Text('A'),
        //   ),
        // ),
      ),
      body: _ChatBody(),
    );
  }
}

class _ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Expanded(
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return index % 2 == 0 ? MsgBubble() : OtherMsgBubble();
          },
        ),
            ),
            MsgFieldBox()
          ],
        ),
      )
    );
  }
}