import 'package:e_chat/core/helper/chexk_isrtl.dart';
import 'package:e_chat/core/utils/app_color.dart';
import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget{
  final Map<String, dynamic> message;


  const MessageBubble({super.key, required this.message});
  @override
  Widget build(BuildContext context) {
    final isMe = message['isMe'];
    final radius = Radius.circular(12);
    final isRtl = isRTL(message['text']);

    return Align(
      alignment: isMe? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width * 0.75),
        decoration: BoxDecoration(
          color: isMe? AppColors.primaryColor : Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: radius,
            topRight: radius,
            bottomLeft: isMe? radius :Radius.zero,
            bottomRight: isMe? Radius.zero : radius,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              message['text'],
              style: TextStyle(
                color: isMe ? Colors.white : Colors.black87,
                fontSize: 15,
              ),
              textDirection: isRtl? TextDirection.rtl : TextDirection.ltr,
              textAlign: isRtl? TextAlign.right : TextAlign.left,
            ),
            const SizedBox(height: 4),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  message['time'],
                  style: TextStyle(
                    fontSize: 11,
                    color: isMe ? Colors.white70 : Colors.grey,
                  ),
                ),
                if (isMe) ...[
                  const SizedBox(width: 4),
                  const Icon(Icons.done_all, size: 14, color: Colors.white70),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }

}