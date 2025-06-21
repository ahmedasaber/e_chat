import 'package:e_chat/core/helper/chexk_isrtl.dart';
import 'package:e_chat/core/utils/app_color.dart';
import 'package:e_chat/features/chat/views/widget/message_bubble.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatPageViewBody extends StatefulWidget {
   const ChatPageViewBody({super.key});

  @override
  State<ChatPageViewBody> createState() => _ChatPageViewBodyState();
}

class _ChatPageViewBodyState extends State<ChatPageViewBody> {
  late final TextEditingController _controller;
  TextDirection _textDirection = TextDirection.ltr;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
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
      'text': "مش مشكلة لو مش ماشية معاك اركنها و نعمل جوجل لحد ما تشوفلها حل",
      'time': "10:11",
      'isMe': true,
    },
    {
      'text': "التسجيل ب الفيس ارخم من جوجل ف حاجات بعملها ف meta ب اكونت developer و create app و عايز key مش عارف اجيبه وحاجه خرة",
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
          padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
          child: Row(
            children: [
              IconButton(
                onPressed: (){

                },
                icon: Icon(CupertinoIcons.mic, color: AppColors.secondaryColor,)
              ),
              Expanded(
                child: TextField(
                  controller: _controller,
                  onChanged: (value){
                    if(value.isNotEmpty){
                      setState(() {
                        _textDirection = isRTL(_controller.text) ? TextDirection.rtl : TextDirection.ltr;
                      });
                    }
                  },
                  textDirection: _textDirection,
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
