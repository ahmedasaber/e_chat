import 'package:e_chat/core/utils/app_color.dart';
import 'package:e_chat/features/chat/views/chat_page_view.dart';
import 'package:flutter/material.dart';

class HomeChatViewBody extends StatelessWidget {
  const HomeChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        // TODO navigate to chat page
        Navigator.pushNamed(context, ChatPageView.routeName);
      },
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=2'), // TODO user photo
      ),
      title: Row(
        children: [
          Expanded(
            child: Text(
              'David Wayne', // TODO user name
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            '10:25', // TODO last message date
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      subtitle: Row(
        children: [
          Expanded(
            child: Text(
              'Thanks a bunch! Have a great day! 😊Thanks a bunch! Have a great day! 😊', // TODO last message
              maxLines: 1,
              style: TextStyle(
                color: Colors.grey[400],
                fontSize: 12,
                fontWeight: FontWeight.bold,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5),
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(4)
            ),
            child: Text(
              '2', // TODO num of messages not read yet
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
