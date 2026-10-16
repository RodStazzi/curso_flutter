//import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:d_app_chat/presentation/chat/chat_screen.dart';
import  'package:d_app_chat/presentation/welcome_screen.dart';

class AppRoutes {
  static const String initialRoute = '/welcome';
  static const String chatRoute = '/chat';

static Map<String, Widget Function(BuildContext)> get pages => {
    initialRoute: (context) => const WelcomeScreen(),
    chatRoute: (context) => const ChatScreen(),
  };

  // static final List<MaterialPageRoute> pages = [
  //   MaterialPageRoute(builder: (context) => const WelcomeScreen(),
  //   ),
  //   MaterialPageRoute(builder: (context) => const ChatScreen(),
  //   ),
  // ];
}