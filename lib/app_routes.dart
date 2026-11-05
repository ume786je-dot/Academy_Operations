import 'package:get/get.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/chat.dart';

class AppRoutes {
  static const login = '/login';
  static const chat = '/chat';

  static final pages = [
    GetPage(
      name: login,
      page: () => LoginScreen(),
    ),

    GetPage(
      name: chat,
      page: () => ChatHistory(),
    ),
  ];
}

