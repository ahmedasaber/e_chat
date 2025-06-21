import 'package:e_chat/core/utils/app_color.dart';
import 'package:e_chat/features/chat/views/widget/message_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPageViewBody extends StatelessWidget {
   ChatPageViewBody({super.key});

  final List<Map<String, dynamic>> messages=
  [
    {
      'text': "Hi!", 'time': "10:10", 'isMe': true
    },
    {
    'text': "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉",
    'time': "10:11",
    'isMe': true,
    },
    {
      'text': "No problem at all!\nI'll be there in about 15 minutes.",
      'time': "10:11",
      'isMe': false,
    },
    {
      'text': "I'll text you when I arrive.",
      'time': "10:11",
      'isMe': false,
    },
    {
      'text': "Great! 😊", 'time': "10:12", 'isMe': true
    },
    {
      'text': "Hi!", 'time': "10:10", 'isMe': true
    },
    {
      'text': "Awesome, thanks for letting me know! Can't wait for my delivery. 🎉",
      'time': "10:11",
      'isMe': true,
    },
    {
      'text': "No problem at all!\nI'll be there in about 15 minutes.",
      'time': "10:11",
      'isMe': false,
    },
    {
      'text': "I'll text you when I arrive.",
      'time': "10:11",
      'isMe': false,
    },
    {
      'text': "Great! 😊", 'time': "10:12", 'isMe': true
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          onTap: () {
            // TODO
          },
          leading: CircleAvatar(
            radius: 30,
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
        Expanded(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Color(0xfff0f0f3),
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, i){
                return MessageBubble(message: messages[i]);
              }
            ),
          )
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
          child: Row(
            children: [
              IconButton(
                onPressed: (){

                },
                icon: Icon(CupertinoIcons.mic, color: AppColors.secondaryColor,)
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: Colors.transparent
                      )
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                          color: Colors.transparent
                      )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(
                            color: Colors.transparent
                        )
                    ),
                    filled: true,
                    fillColor: Color(0xfff0f0f3),
                    hintText: 'Type a message ...',
                    hintStyle: TextStyle(fontSize: 14, color: Colors.grey)
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){

                },
                child: SvgPicture.asset('assets/images/Button send.svg'),
              ),
            ],
          ),
        )
      ],
    );
  }
}
