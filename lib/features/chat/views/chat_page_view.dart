import 'package:e_chat/features/chat/views/widget/chat_page_view_body.dart';
import 'package:flutter/material.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

  static const routeName = 'chat page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: ChatPageViewBody(),
    );
  }
}