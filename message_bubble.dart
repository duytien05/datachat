import 'package:flutter/material.dart';
import '../models/message.dart';

class MessageBubble extends StatelessWidget {
  final Message msg;

  const MessageBubble(this.msg);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: msg.isMe
          ? Alignment.centerRight
          : Alignment.centerLeft,

      padding: EdgeInsets.all(10),

      child: Container(
        padding: EdgeInsets.all(12),

        decoration: BoxDecoration(
          color: msg.isMe ? Colors.blue : Colors.grey[300],
          borderRadius: BorderRadius.circular(10),
        ),

        child: Text(
          msg.text,
          style: TextStyle(
            color: msg.isMe ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
