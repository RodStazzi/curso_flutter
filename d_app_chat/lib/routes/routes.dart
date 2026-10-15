import 'package:get/get.dart';

import 'package:d_app_chat/presentation/chat/chat_screen.dart';
import  'package:d_app_chat/presentation/welcome_screen.dart';

class AppRoutes {
  static const String initialRoute = '/welcome';
  static const String chatRoute = '/chat';

  static final List<GetPage> pages = [
    GetPage(
      name: initialRoute,
      page: () => const WelcomeScreen(),
    ),
    GetPage(
      name: chatRoute,
      page: () => const ChatScreen(),
    ),
  ];
}