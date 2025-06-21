import 'package:e_chat/features/chat/views/widget/chat_page_view_body.dart';
import 'package:flutter/material.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({super.key});

  static const routeName = 'chat page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        leadingWidth: 46,
        title: ListTile(
          onTap: () {
            // TODO
          },
          leading: CircleAvatar(
            radius: 23,
            backgroundImage: NetworkImage(
              'https://i.pravatar.cc/150?img=2',
            ), // TODO user photo
          ),
          title: Text(
            'David Wayne', // TODO user name
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            '(+44) 50 9285 3022', // TODO last message
            style: TextStyle(
              color: Colors.grey[400],
              fontSize: 12, fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
      ),
      body: ChatPageViewBody(),
    );
  }
}