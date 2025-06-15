import 'package:e_chat/features/chat/widget/home_chat_view_body.dart';
import 'package:flutter/material.dart';

class HomeChatView extends StatelessWidget {
  const HomeChatView({super.key});

  static const routeName = 'home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeChatViewBody(),
    );
  }
}